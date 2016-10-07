class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :fullname
      t.string :username
      t.string :password
      t.string :email
      t.string :address
      t.string :phone
      t.string :twitter
      t.string :facebook
      t.string :skype
      t.integer :followers
      t.integer :following
      t.integer :posts
    end
  end
end
