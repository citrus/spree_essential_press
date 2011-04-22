# Configure Rails Envinronment
ENV["RAILS_ENV"] = "test"
require 'spork'


Spork.prefork do
    
  require File.expand_path("../dummy/config/environment.rb",  __FILE__)
  require 'rails/test_help'
  require 'shoulda'
  require 'factory_girl'
  require 'sqlite3'
  require 'faker'
  
  ActionMailer::Base.delivery_method    = :test
  ActionMailer::Base.perform_deliveries = true
  ActionMailer::Base.default_url_options[:host] = "example.com"
  
  Rails.backtrace_cleaner.remove_silencers!
  
  # Configure capybara for integration testing
  require "capybara/rails"
  require "selenium/webdriver"
  
  Capybara.default_driver = :selenium
  
  if 40 <= Spree.version.split(".")[1].to_i
    class ActionController::TestCase
      include Devise::TestHelpers
    end
  end

  # Loading more in this block will cause your tests to run faster. However,
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.

end

Spork.each_run do
  # This code will be run each time you run your specs.
  
  # Load support files
  Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
  
  include HelperMethods
  

end

