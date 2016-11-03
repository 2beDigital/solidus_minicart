# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'solidus_minicart'
  s.version     = '0.1.0'
  s.summary     = "Solidus Minicart displays a minicart in your spree store"
  s.description = "Solidus Minicart allows customer to preview their cart without leaving the page they're on. This is a fork from https://github.com/sbounmy/spree_minicart by Stéphane Bounmy."
  s.required_ruby_version = '>= 2.2.0'


  s.author            = '2bedigital'
  s.email             = 'noel@2bedigital.com '
  s.homepage          = 'https://github.com/2bedigital/spree_minicart'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  # doesn't work with rails 4.1.10
  s.add_dependency 'rails', '~> 5.0'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'rspec-rails',  '~> 3.5'
  s.add_development_dependency 'sass-rails', '~> 5.0'
  s.add_development_dependency 'coffee-rails', '~> 4.2'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'sqlite3'
end
