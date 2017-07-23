# https://github.com/git-no/jekyll-breadcrumbs/blob/1f10f08242454a15aa2ff87f200d74327e5d0a8a/site/_plugins/drops/breadcrumb_item.rb
module Drops
  class BreadcrumbItem < Liquid::Drop
    extend Forwardable

    def_delegator :@page, :data
    def_delegator :@page, :url

    def initialize(page, payload)
      @payload = payload
      @page = page
    end

    def title
      @page.data["breadcrumb"] != nil ? @page.data["breadcrumb"] : @page.data["title"]
    end

    def namespace
      @page.data["namespace"]
    end


    def inspect
        vars = instance_variables.map do |n|
            "#{n}=#{instance_variable_get(n).inspect}"
        end
        "#<%s:0x%x %s>" % [self.class,object_id,vars.join(', ')]
    end

  end
end