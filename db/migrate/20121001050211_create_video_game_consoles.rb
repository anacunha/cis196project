class CreateVideoGameConsoles < ActiveRecord::Migration
  def change
    create_table :video_game_consoles do |t|
      t.string :name
      t.date :release_date
      t.string :manufacturer

      t.timestamps
    end
  end
end
