# Netlify
# - do not seem to fetch git lfs files correctly
# - and they remove the remote after they clone the repo
#
# This is an awkward attempt to patch that behaviour

Jekyll::Hooks.register :site, :after_init do |post|
  return unless Jekyll.env == 'production'

  command = "git lfs pull https://github.com/ecoacoustics/ecoacoustics.git"
  Jekyll.logger.info "Executing additional git lfs command: #{command}"

  cmd command

  Jekyll.logger.info "Executing additional git lfs command completed!"
end

# Run a shell command
#
# @param  [String] cmd The command to execute.
# @return [String] Standard output of the command.
# @throws [RuntimeError] (includes the Standard Error).
# 
# https://github.com/mx4492/simple_cmd/blob/master/lib/simple_cmd.rb
def cmd s
    require 'open3'
    stdout_str, stderr_str, status = Open3.capture3(s)
    fail "#{s}: #{stderr_str.chomp}"  unless status.success?
    stdout_str
end