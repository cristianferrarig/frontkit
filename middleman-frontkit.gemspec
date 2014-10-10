# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'middleman-frontkit/version'

Gem::Specification.new do |gem|
  gem.name        = "middleman-frontkit"
  gem.version     = Middleman::Frontkit::VERSION
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = ["Cristian Ferrari"]
  gem.email       = ["cristianferrarig@gmail.com"]
  gem.homepage    = "http://middlemanapp.com"
  gem.summary     = "A Middleman opinionated toolkit"
  gem.description = "A static site generator. Provides dozens of templating languages (Haml, Sass, Compass, Slim, CoffeeScript, and more). Makes minification, compression, cache busting, Yaml data (and more) an easy part of your development cycle."

  gem.files         = `git ls-files -z`.split("\0")
  gem.test_files    = `git ls-files -z -- {fixtures,features}/*`.split("\0")
  gem.require_paths = ["lib"]
  gem.required_ruby_version = '>= 1.9.3'

  gem.add_dependency("middleman-core",         "~> 3.3.6")
  gem.add_dependency("middleman-sprockets",    ">= 3.1.2")

  gem.add_dependency("middleman-livereload",   "~> 3.3.4")
  gem.add_dependency("middleman-imageoptim",   "~> 0.1.4")
  gem.add_dependency("middleman-autoprefixer", "~> 2.2.1")
  gem.add_dependency("middleman-minify-html",  "~> 3.4.0")
  gem.add_dependency("middleman-deploy",       "~> 0.3.0")

  gem.add_dependency("coffee-script", ["~> 2.2"])
  gem.add_dependency("execjs",        ["~> 2.0"])
  gem.add_dependency("kramdown",      ["~> 1.2"])
  gem.add_dependency("haml",          [">= 4.0.5"])
  gem.add_dependency("sass",          [">= 3.4.0", "< 4.0"])
  gem.add_dependency("uglifier",      ["~> 2.5"])
end
