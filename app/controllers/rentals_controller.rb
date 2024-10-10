class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def new
    @rental = Rental.new
    @necklace = Necklace.find(params[:necklace_id])
  end

  def create
    @rental = Rental.new

    @necklace = Necklace.find(params[:necklace_id])
    @rental.necklace = @necklace
    @rental.user = current_user
    @rental.save
    # redirect to
  end

  private

  def rental_params
    params.require(:rental).permit(:user_id, :necklace_id)
  end
end
