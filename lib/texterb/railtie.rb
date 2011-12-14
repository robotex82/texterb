module Texterb
  class Railtie < ::Rails::Railtie
    config.texterb = Texterb
    config.app_generators.mailer :template_engine => :texterb
  end
end
