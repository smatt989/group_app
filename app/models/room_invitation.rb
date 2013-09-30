class RoomInvitation < ActiveRecord::Base
  attr_accessible :receiver_id, :room_id, :sender_id
  belongs_to :user
  belongs_to :room
end
