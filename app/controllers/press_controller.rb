class PressController < Spree::BaseController
  
  def index
    @press = Press.all
  end  
  
end