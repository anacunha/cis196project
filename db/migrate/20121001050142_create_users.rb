class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.date :date_of_birth
      t.string :telephone

      t.timestamps
    end
    add_index :users, :email, :unique => true
  end
end
