class CreateComments < ActiveRecord::Migration
  def up

    create_table :comments do |t|
    t.column"commenttext",:string ,:limit=> 25
    t.timestamps
    t.boolean"visible",:default=>false
    t.integer  "user_id"
    t.integer  "photo_id"
    t.integer "likes" 
    end
 end
 def down
  	drop_table :comments
  end
end