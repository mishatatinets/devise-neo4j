# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "devise-neo4j/version"

Gem::Specification.new do |s|
  s.name        = "devise-neo4j"
  s.version     = Devise::Neo4j::VERSION
  s.authors     = ["Ben Jackson", "Bobby Calderwood"]
  s.email       = ["ben@lissomsolutions.com"]
  s.homepage    = "http://github.com/benjackson/devise-neo4j"
  s.summary     = %q{Devise ORM for Neo4j}
  s.description = %q{Neo4j integration with the Devise authentication framework}

  s.rubyforge_project = "devise-neo4j"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  
  s.add_dependency("orm_adapter", "~> 0.1")
  s.add_dependency("bcrypt-ruby", "~> 3.0")
  s.add_dependency("railties", "~> 3.1")
  s.add_dependency("neo4j", git: 'https://github.com/andreasronge/neo4j/tree/v2.3.0.git')
  s.add_dependency("devise", "~> 2.2.0")
  
  s.add_development_dependency "rails"
  s.add_development_dependency "rake"
  s.add_development_dependency "webrat"
  s.add_development_dependency "mocha"
  s.add_development_dependency "ruby-debug", ">= 0.10.3" if RUBY_VERSION < '1.9'
end
