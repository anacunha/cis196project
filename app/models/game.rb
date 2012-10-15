class Game < ActiveRecord::Base
  attr_accessible :developer, :genre, :publisher, :release_date, :title, :video_game_console, :video_game_console_id
  belongs_to :video_game_console

  def video_game_console_name
    video_game_console.name if video_game_console
  end
end