class RoomConnection < ActiveRecord::Base
  attr_accessible :room_id, :user_id

  def find_by_room_id(room_id)
  	return RoomConnection.find(:room_id => room_id)
  end
end
