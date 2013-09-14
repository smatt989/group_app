class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :provider
      t.string :uid
      t.string :remember_token
      t.string :photo_link

      t.timestamps
    end
  end
end
