# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'
# Add additional requires below this line. Rails is not loaded until this point!
require 'capybara/rails'
require 'turnip'
require 'turnip/rspec'
require 'turnip/capybara'
Dir.glob('spec/steps/**/*steps.rb') { |f| load f, true }

require 'database_cleaner'

ActiveRecord::Migration.maintain_test_schema!

Monban.test_mode!

RSpec.configure do |config|
  config.use_transactional_fixtures = true

  config.infer_spec_type_from_file_location!

  config.filter_rails_from_backtrace!

  config.include FactoryGirl::Syntax::Methods

  config.include Monban::Test::Helpers, type: :feature
  config.include Monban::Test::ControllerHelpers, type: :controller

  config.before :suite do
    DatabaseCleaner.strategy = :truncation
  end

  config.before :each do
    DatabaseCleaner.start
  end

  config.after :each do
    Monban.test_reset!
    DatabaseCleaner.clean
  end
end
