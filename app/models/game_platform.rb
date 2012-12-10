class GamePlatform < ActiveRecord::Base
  attr_accessible :game_id, :platform_id
  belongs_to :game
  belongs_to :platform
  has_many :ownerships
  has_many :users, :through => :ownerships
end
