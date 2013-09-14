class Room < ActiveRecord::Base
  attr_accessible :title, :user_id
  belongs_to :user
  has_many :posts, dependent: :destroy
  has_many :room_connections, dependent: :destroy

  validates :title, presence: true
  validates :user_id, presence: true
end
