source 'https://rubygems.org'

gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'monban'
gem 'monban-generators'

group :production do
  gem 'mysql2'
  gem 'puma', '~> 3.0'
end

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
  gem 'capybara'
  #gem 'capybara-webkit'
  gem 'turnip', '3.0.0.pre.beta.5'
  gem 'gherkin', '~> 4'
  gem 'factory_girl_rails'
  gem 'simplecov'
  gem 'rubocop'
  gem 'sqlite3'
  gem 'database_cleaner'
end

group :development do
  gem 'web-console'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-commands-cucumber'
  gem 'guard', '2.11.1'
  gem 'guard-rspec'
  gem 'rb-readline'
  gem 'rb-inotify', require: nil
  gem 'rb-fsevent', require: nil
  gem 'rb-fchange', require: nil
end

group :test do
  gem 'codeclimate-test-reporter', '~> 0.6.0', require: nil
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'win32console', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'wdm', '>= 0.1.0' if Gem.win_platform?
