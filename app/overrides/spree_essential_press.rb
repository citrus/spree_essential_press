Deface::Override.new(:virtual_path  => "layouts/admin",
                     :name          => "press_admin_tab",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :partial       => "admin/hooks/press_tab",
                     :disabled      => !SpreeEssentialPress.independent?)
