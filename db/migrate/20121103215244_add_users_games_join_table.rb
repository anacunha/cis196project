class AddUsersGamesJoinTable < ActiveRecord::Migration
  def self.up
    create_table :games_users, :id => false do |t|
      t.integer :user_id
      t.integer :game_id
    end
  end

  def self.down
    drop_table :games_users
  end
end
