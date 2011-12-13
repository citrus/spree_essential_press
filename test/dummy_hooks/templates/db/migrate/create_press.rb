class CreatePress < ActiveRecord::Migration
  def self.up
    create_table :press do |t|
      t.string     :title
      t.string     :publication
      t.datetime   :published_at
      t.text       :description      
      t.string     :url
      t.timestamps
    end    
  end

  def self.down
    drop_table :press
  end
end
