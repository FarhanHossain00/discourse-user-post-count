# frozen_string_literal: true

module ::UserPostCount
  class Engine < ::Rails::Engine
    engine_name PLUGIN_NAME
    isolate_namespace UserPostCount
    config.autoload_paths << File.join(config.root, "lib")
  end
end
