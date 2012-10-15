class AddVideoGameConsoleIdToGames < ActiveRecord::Migration
  def change
    add_column :games, :video_game_console_id, :integer
  end
end
