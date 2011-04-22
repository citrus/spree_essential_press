require 'spree_core'
require 'spree_auth'

require 'spree_essential_press/inflection'
  
module SpreeEssentialPress
  
  def self.tab
    [:press, { :route => :admin_press_index }]
  end
  
  def self.sub_tab
    [:press, { :route => :admin_press_index, :label => 'admin.subnav.press', :match_path => '/press' }]
  end
  
  def self.independent?
    return true unless defined?(SpreeEssentials)
    !SpreeEssentials.respond_to?(:register)
  end
  
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)
    

    #initializer "static assets" do |app|
    #  app.middleware.insert_before ::Rack::Lock, ::ActionDispatch::Static, "#{config.root}/public"
    #end
        
    #def self.activate
    #  
    #  Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator.rb")) do |c|
    #    Rails.env.production? ? require(c) : load(c)
    #  end
    #  
    #end
    #
    #config.to_prepare &method(:activate).to_proc
    
  end
  
end


if SpreeEssentialPress.independent?
  require 'spree_essential_press/custom_hooks'
else 
  SpreeEssentials.register SpreeEssentialPress 
end