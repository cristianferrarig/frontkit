require "middleman-core/templates"

module Frontkit

  # A template that generates a Frontkit-specific config.rb
  class Template < Middleman::Templates::Base
    class_option "css_dir",
      default: "stylesheets",
      desc: 'The path to the css files'
    class_option "js_dir",
      default: "javascripts",
      desc: 'The path to the javascript files'
    class_option "images_dir",
      default: "images",
      desc: 'The path to the image files'

    # Template files are relative to this file
    def self.source_root
      File.join(File.dirname(__FILE__))
    end

    # Actually output the files
    def build_scaffold
      template = File.join(location, "/")
      directory "template", template
    end
  end
end

Middleman::Templates.register(:frontkit, Frontkit::Template)