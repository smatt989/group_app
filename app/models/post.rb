class Post < ActiveRecord::Base
  attr_accessible :room_id, :source, :type_name, :type_id, :user_id
  belongs_to :user
  belongs_to :room
end
