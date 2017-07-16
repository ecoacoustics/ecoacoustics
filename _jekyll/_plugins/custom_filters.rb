module Jekyll
  module CustomFilters
    def to_hash(o)
      JSON.parse(JSON.dump(o))
    end

    def pretty_json(o)
        JSON.pretty_generate(o)
    end

    def exclude_map(input, *properties)
      Liquid::StandardFilters::InputIterator.new(input).map do |e|
        to_hash(e).reject { |key, value| properties.include?(key) }
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::CustomFilters)