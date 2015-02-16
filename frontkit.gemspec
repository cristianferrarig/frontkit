# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'frontkit/version'

Gem::Specification.new do |gem|
  gem.name        = "frontkit"
  gem.version     = Frontkit::VERSION
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = ["Cristian Ferrari"]
  gem.email       = ["cristianferrarig@gmail.com"]
  gem.homepage    = "http://middlemanapp.com"
  gem.summary     = "A opinionated toolkit based on Middleman"
  gem.description = "A static site generator. Provides dozens of templating languages (Haml, Sass, Compass, Slim, CoffeeScript, and more). Makes minification, compression, cache busting, Yaml data (and more) an easy part of your development cycle."

  gem.files         = `git ls-files -z`.split("\0")
  gem.test_files    = `git ls-files -z -- {fixtures,features}/*`.split("\0")
  gem.require_paths = ["lib"]
  gem.required_ruby_version = '>= 1.9.3'

  gem.add_dependency("middleman",              "~> 3.3.7")

  gem.add_dependency("middleman-livereload",   "~> 3.4.2")
  gem.add_dependency("middleman-imageoptim",   "~> 0.2.0")
  gem.add_dependency("middleman-autoprefixer", "~> 2.3.0")
  gem.add_dependency("middleman-minify-html",  "~> 3.4.0")
  gem.add_dependency("middleman-deploy",       "~> 1.0.0")
  gem.add_dependency("middleman-bower",        "~> 1.0.2")
  gem.add_dependency("middleman-syntax",       "~> 2.0.0")
end
