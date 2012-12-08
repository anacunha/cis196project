class AddGamesPlatformsJoinTable < ActiveRecord::Migration
  def self.up
    create_table :games_platforms, :id => false do |t|
      t.integer :game_id
      t.integer :platform_id
    end
  end

  def self.down
    drop_table :games_platform
  end
end
