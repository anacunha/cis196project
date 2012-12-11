class GamePlatform < ActiveRecord::Base
  attr_accessible :game_id, :platform_id, :game, :platform
  belongs_to :game
  belongs_to :platform
  has_many :ownerships
  has_many :users, :through => :ownerships
  
  def game_title
    game.title if game
  end
  
  def platform_name
    platform.name if platform
  end
  
  def game_platform_pair
    game.title + " - " + platform.name
  end
  
  validates :game, presence: true
  validates :platform, presence: true
end
