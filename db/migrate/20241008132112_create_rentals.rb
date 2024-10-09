class CreateRentals < ActiveRecord::Migration[7.2]
  def change
    create_table :rentals do |t|
      t.references :user, null: false, foreign_key: true
      t.references :necklace, null: false, foreign_key: true

      t.timestamps
    end
  end
end
