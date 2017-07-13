Jekyll::Assets::Hook.register :env, :init do
    path = Bundler.rubygems.find_name('rails-assets-bulma').first.full_gem_path
    append_path path
end