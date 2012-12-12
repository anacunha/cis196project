class GamePlatform < ActiveRecord::Base
  attr_accessible :game_id, :platform_id, :game, :platform
  belongs_to :game
  belongs_to :platform
  has_many :ownerships
  has_many :users, :through => :ownerships
  
  def game_platform_pair
    game.title + " - " + platform.name
  end
  
  validates :game, presence: true
  validates :platform, presence: true

  scope :pc, joins(:platform).where('name = ?', "PC")
  scope :playstation3, joins(:platform).where('name = ?', "PlayStation 3")
  scope :wii, joins(:platform).where('name LIKE ?', "Wii%")
  scope :xbox360, joins(:platform).where('name = ?', "Xbox 360")
  scope :others, joins(:platform).where('name not in (?, ?, ?, ?, ?)', "PC", "PlayStation 3", "Wii", "Wii U", "Xbox 360").order('name ASC')
end
