class Ownership < ActiveRecord::Base
  attr_accessible :amount_paid, :game_platform_id, :game_retailer_id, :purchase_date, :user_id
  belongs_to :user
  belongs_to :game_platform
  belongs_to :game_retailer
  has_one :game, :through => :game_platform
  has_one :platform, :through => :game_platform
  
  def user_name
    user.name if user
  end
  
  def game_retailer_name
    game_retailer.name if game_retailer
  end
  
  def game_title
    game.title if game
  end
  
  def platform_name
    platform.name if platform
  end
  
  validates :user, presence: true
  validates :game_platform, presence: true
end
