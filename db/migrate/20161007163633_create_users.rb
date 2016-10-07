class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :fullname
      t.string :username
      t.string :password
      t.string :email, :null => true
      t.string :address, :null => true
      t.string :phone, :null => true
      t.string :twitter, :null => true
      t.string :facebook, :null => true
      t.string :skype, :null => true
      t.integer :followers, :default => 0
      t.integer :following, :default => 0
      t.integer :posts, :default => 0
    end
  end
end
