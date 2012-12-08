class CreatePlatforms < ActiveRecord::Migration
  def change
    create_table :platforms do |t|
      t.string :name
      t.date :release_date
      t.string :manufacturer

      t.timestamps
    end
  end
end
