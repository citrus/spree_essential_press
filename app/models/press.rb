class Press < ActiveRecord::Base

  set_table_name :press
  
  validates_presence_of :title  
  validates_presence_of :publication
  validates :published_at, :datetime => true
  validates :url, :format => { :with => /(^(http|https):\/\/[a-z0-9]+([-.]{1}[a-z0-9]*)+. [a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix }, :unless => Proc.new{|record| record.url.blank? }
  
  has_many :images, :as => :viewable, :class_name => 'PressImage', :order => :position, :dependent => :destroy
  
  before_validation :fix_url
  
  private
  
    def fix_url
      return if url.blank?
      self.url = "http://#{url}" unless url =~ /^(http|https):\/\//i      
    end
  
end