require_relative '../../test_helper'

class Admin::PressTest < ActiveSupport::IntegrationCase
  
  def setup
    # nada!
      
  end
  
  should "require login" do
    visit admin_press_index_path
    #sleep 10
  end
  
end