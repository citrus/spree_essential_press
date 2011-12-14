# Configure Rails Envinronment
ENV["RAILS_ENV"] = "test"
  
require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require 'shoulda'
require 'factory_girl'
require 'sqlite3'

ActionMailer::Base.delivery_method    = :test
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.default_url_options[:host] = "example.com"

Rails.backtrace_cleaner.remove_silencers!

require File.expand_path("../support/factories.rb",  __FILE__)
