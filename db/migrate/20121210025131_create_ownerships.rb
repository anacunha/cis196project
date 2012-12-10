class CreateOwnerships < ActiveRecord::Migration
  def change
    create_table :ownerships do |t|
      t.date :purchase_date
      t.decimal :amount_paid
      t.integer :user_id
      t.integer :game_platform_id
      t.integer :game_retailer_id

      t.timestamps
    end
  end
end
