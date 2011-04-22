require 'spree_core'
require 'spree_auth'
require 'meta_search'

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
  end
  
end

if SpreeEssentialPress.independent?
  require 'spree_essential_press/custom_hooks'
else 
  SpreeEssentials.register SpreeEssentialPress 
end