class CreateTagGossips < ActiveRecord::Migration[7.0]
  def change
    create_table :tag_gossips do |t|
      t.string :title
      t.text :content
      t.belongs_to :user, index: true
      t.belongs_to :tag, index: true 
      t.belongs_to :gossip, index: true 

      t.timestamps
    end
  end
end
