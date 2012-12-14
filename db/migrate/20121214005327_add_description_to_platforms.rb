class AddDescriptionToPlatforms < ActiveRecord::Migration
  def change
    add_column :platforms, :description, :text
  end
end
