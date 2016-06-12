$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "handlers/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "handlers"
  s.version     = Handlers::VERSION
  s.authors     = ["mylake"]
  s.email       = ["ilake.chang@gmail.com"]
  s.homepage    = "http://ilake.com"
  s.summary     = "Summary of Handlers."
  s.description = "Description of Handlers."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
end
