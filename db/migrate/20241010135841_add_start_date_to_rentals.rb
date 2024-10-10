class AddStartDateToRentals < ActiveRecord::Migration[7.2]
  def change
    add_column :rentals, :start_date, :date
  end
end
