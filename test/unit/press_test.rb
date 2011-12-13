require 'test_helper'

class PressTest < Test::Unit::TestCase

  def setup
    Press.destroy_all
  end
  
  subject { Press.new }
  
  should validate_presence_of(:title)
  should have_many(:images)
  
  context "a new press" do
    
    setup do
      @press = Factory.stub(:press)
    end
  
    should "validate published_at" do
      @press.published_at = "now"
      assert !@press.valid?
      @press.published_at = "2011/4/20 16:20"
      assert @press.valid?      
      @press.published_at = "April 20, 2011 at 4:20pm"
      assert @press.valid?
      assert_equal DateTime.parse("2011/4/20 16:20"), @press.published_at
    end
  
    should "validate url" do
      # valid without url
      assert @press.valid?
      # valid domains
      %w(example.com www.example.com http://example.com http://www.example.com https://example.com).each do |domain|
        @press.url = domain
        assert @press.valid?, "#{domain} should be valid."  
      end
      # invalid domains
      %w(examplecom w.c www.c http:// a.b.c google.c.o.m ttp://google.com http//google.com http:/google.com).each do |domain|
        @press.url = domain
        assert !@press.valid?, "#{domain} should be invalid."  
      end
    end  
    
    should "add http:// if necessary" do
      @press.url = "google.com"
      assert @press.valid?
      assert_equal "http://google.com", @press.url
    end
    
    should "preserve http://" do
      @press.url = "http://google.com"
      assert @press.valid?
      assert_equal "http://google.com", @press.url
    end
    
    should "preserve https://" do
      @press.url = "https://google.com"
      assert @press.valid?
      assert_equal "https://google.com", @press.url
    end
    
  end
      
end