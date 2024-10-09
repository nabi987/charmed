class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.save
  end

  private

  def rental_params
    params.require(:rental).permit(:user_id, :necklace_id)
  end
end