class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.text :content
      t.string :image_upload, :null => true
      t.integer :like_num, :default => 0
      t.integer :comment_num, :default => 0
      t.integer :user_id
      t.timestamps
    end
  end
end
