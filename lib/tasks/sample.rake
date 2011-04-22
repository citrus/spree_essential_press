namespace :db do
  namespace :sample do
    desc "creates sample press mentions"
    task :press do
      
      require 'faker'
      require Rails.root.join('config/environment.rb')
        
      Press.destroy_all
        
      image_dir = File.expand_path("../sample", __FILE__)
      images    = Dir[image_dir + "/*.jpg"]
      
      50.times { |i|
      
        press = Press.create(
          :title        => Faker::Lorem.sentence,
          :publication  => Faker::Lorem.words(1 + rand(3)).join(" "),
          :published_at => Time.now - i * rand(10000000),
          :description  => Faker::Lorem.paragraph
        )
        
        rand(5).times { |i|
          image = press.images.create(:attachment => File.open(images.sort_by{rand}.first), :alt => Faker::Lorem.sentence)
        }
        
        print "*"
        
      }
      
      puts "\ndone."
      
    end
  end
end