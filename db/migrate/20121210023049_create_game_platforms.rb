class CreateGamePlatforms < ActiveRecord::Migration
  def change
    create_table :game_platforms do |t|
      t.integer :game_id
      t.integer :platform_id

      t.timestamps
    end
  end
end
