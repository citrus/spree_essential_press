require 'spree_core'

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
    
    if SpreeEssentialPress.independent?
      config.to_prepare do
      
        #loads application's deface view overrides
        Dir.glob File.expand_path("../../app/overrides/*.rb", __FILE__) do |c|
          Rails.application.config.cache_classes ? require(c) : load(c)
        end
        
      end
    end
    
  end
  
end

unless SpreeEssentialPress.independent?
  SpreeEssentials.register :press, SpreeEssentialPress 
end
