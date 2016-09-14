# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_minicart'
  s.version     = '1.2.3'
  s.summary     = "Spree Minicart displays a minicart in your spree store"
  s.description = "Spree Minicart allows customer to preview their cart without leaving the page they're on. This is a fork from https://github.com/sbounmy/spree_minicart by Stéphane Bounmy."
  s.required_ruby_version = '>= 1.9.3'


  s.author            = '2bedigital'
  s.email             = 'noel@2bedigital.com '
  s.homepage          = 'https://github.com/2bedigital/spree_minicart'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  # doesn't work with rails 4.1.10
  s.add_dependency 'rails', '4.1.11'

  s.add_dependency 'spree_core', '~> 2.4'
  s.add_dependency 'spree_frontend', '~> 2.4'

  s.add_development_dependency 'capybara', '~> 2.4'
  s.add_development_dependency 'factory_girl', '~> 4.5'
  s.add_development_dependency 'rspec-rails',  '~> 3.2'
  s.add_development_dependency 'sass-rails', '~> 4.0'
  s.add_development_dependency 'coffee-rails', '~> 4.1'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'sqlite3'
end
