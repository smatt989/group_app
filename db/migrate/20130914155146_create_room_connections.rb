class CreateRoomConnections < ActiveRecord::Migration
  def change
    create_table :room_connections do |t|
      t.integer :user_id
      t.integer :room_id

      t.timestamps
    end
  end
end
