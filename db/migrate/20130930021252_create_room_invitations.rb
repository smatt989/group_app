class CreateRoomInvitations < ActiveRecord::Migration
  def change
    create_table :room_invitations do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.integer :room_id

      t.timestamps
    end
  end
end
