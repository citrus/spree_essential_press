FactoryGirl.define do

  factory :press do
    title        "Title"
    publication  "New York Times"
    published_at Time.now
    description  "OMG!"        
  end
  
  factory :press_image do
    attachment File.open(File.expand_path("../images/1.png", __FILE__))
    alt "Just an image"
  end

end
