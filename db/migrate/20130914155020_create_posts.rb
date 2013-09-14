class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :room_id
      t.string :type
      t.integer :type_id
      t.string :source

      t.timestamps
    end
  end
end
