require "action_view/template"
require "redcloth"
require "texterb/railtie"

module Texterb
  mattr_accessor :processing_options
  @@processing_options = []

  class Handler
    def erb_handler
      @erb_handler ||= ActionView::Template.registered_template_handler(:erb)
    end

    def call(template)
      compiled_source = erb_handler.call(template)
      if template.formats.include?(:html)
        "RedCloth.new(begin;#{compiled_source};end).to_html.html_safe"
      else
        compiled_source
      end
    end
  end
end

ActionView::Template.register_template_handler :texterb, Texterb::Handler.new
