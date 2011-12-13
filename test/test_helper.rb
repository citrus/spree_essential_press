# Configure Rails Envinronment
ENV["RAILS_ENV"] = "test"
  
require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require 'spree_essentials/test_helper'

require File.expand_path("../support/factories.rb",  __FILE__)
