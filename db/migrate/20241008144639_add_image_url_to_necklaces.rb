class AddImageUrlToNecklaces < ActiveRecord::Migration[7.2]
  def change
    add_column :necklaces, :image_url, :string
  end
end
