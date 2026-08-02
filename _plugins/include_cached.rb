module Jekyll
  module Tags

    class IncludeCachedTag < Liquid::Tag

      def initialize(tag_name, markup, tokens)
        super
        @file = markup.strip
      end

      def render(context)
        site = context.registers[:site]
        file = File.join(site.source, "_includes", @file)

        if File.exist?(file)
          File.read(file)
        else
          ""
        end
      end

    end

  end
end

Liquid::Template.register_tag(
  "include_cached",
  Jekyll::Tags::IncludeCachedTag
)
