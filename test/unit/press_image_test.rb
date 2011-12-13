require_relative '../test_helper'

class PressImageTest < Test::Unit::TestCase

  def setup
    PressImage.destroy_all
    @press = Factory.create(:press)
  end
  
  subject { PressImage.new }
  
  context "a new press image" do
    
    setup do
      @image = @press.images.build(Factory.attributes_for(:press_image))
    end
    
    should "validate attachment" do
      assert @image.valid?
    end
    
    should "save and belong to press" do
      assert @image.save
      assert @press.images.include?(@image)
    end
    
  end
      
end
