class AddImageUrlToPlatforms < ActiveRecord::Migration
  def change
    add_column :platforms, :image_url, :string
  end
end
