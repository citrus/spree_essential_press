module SpreeEssentialPress
  
  class CustomHooks < Spree::ThemeSupport::HookListener

    insert_after :admin_tabs,   'admin/hooks/press_tab'
    
  end
  
end
