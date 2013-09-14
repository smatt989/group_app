class User < ActiveRecord::Base
  attr_accessible :name, :photo_link, :provider, :remember_token, :uid
  has_many :rooms, dependent: :destroy
  has_many :room_connections, dependent: :destroy
  has_many :posts, dependent: :destroy

  before_save :create_remember_token

  validates :name, presence: true
  validates :uid, presence: true
  validates :provider, presence: true

  def self.create_with_omniauth(auth)
  	create! do |user|
  	  user.provider = auth["provider"]
  	  user.uid = auth["uid"]
  	  user.name = auth["info"]["name"]
  	  user.photo_link = "http://graph.facebook.com/"+user.uid+"/picture?type=large"
  	end
  end

  private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
