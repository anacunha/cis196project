class Game < ActiveRecord::Base
  attr_accessible :developer, :genre, :publisher, :release_date, :title, :video_game_console_id, :video_game_console
  belongs_to :video_game_console
  has_and_belongs_to_many :users
  
  validates :title, presence: true
  validates :video_game_console, presence: true

  scope :xbox, joins(:video_game_console).where('name = ?', "Xbox 360")
  scope :playstation, joins(:video_game_console).where('name = ?', "PlayStation 3")
  scope :wii, joins(:video_game_console).where('name = ?', "Wii")
  scope :others, joins(:video_game_console).where('name not in (?, ?, ?)', "Wii", "Xbox 360", "PlayStation 3").
                                            order('name ASC').
                                            order('title ASC')

  def video_game_console_name
    video_game_console.name if video_game_console
  end 
end