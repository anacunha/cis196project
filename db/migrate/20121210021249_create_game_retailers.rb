class CreateGameRetailers < ActiveRecord::Migration
  def change
    create_table :game_retailers do |t|
      t.string :name
      t.string :website

      t.timestamps
    end
  end
end
