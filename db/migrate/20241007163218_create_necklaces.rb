class CreateNecklaces < ActiveRecord::Migration[7.2]
  def change
    create_table :necklaces do |t|
      t.string :name
      t.float :price
      t.text :description
      t.string :gemstone
      t.string :material
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
