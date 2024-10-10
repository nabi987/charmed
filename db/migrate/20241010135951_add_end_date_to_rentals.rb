class AddEndDateToRentals < ActiveRecord::Migration[7.2]
  def change
    add_column :rentals, :end_date, :date
  end
end
