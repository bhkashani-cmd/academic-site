module Jekyll
  class IncludeCacheTag < Liquid::Tag
    def initialize(tag_name, markup, tokens)
      super
    end

    def render(context)
      ""
    end
  end
end

Liquid::Template.register_tag('include_cached', Jekyll::IncludeCacheTag)
