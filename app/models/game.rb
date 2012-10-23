class Game < ActiveRecord::Base
  attr_accessible :developer, :genre, :publisher, :release_date, :title, :video_game_console_id, :video_game_console
  belongs_to :video_game_console

  validates :title, presence: true
  validates :video_game_console, presence: true

  def video_game_console_name
    video_game_console.name if video_game_console
  end 
end