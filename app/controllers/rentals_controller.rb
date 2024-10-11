class RentalsController < ApplicationController
  def index
    @rentals = current_user.rentals
    @listed = current_user.necklaces
  end

  def new
    @rental = Rental.new
    @necklace = Necklace.find(params[:necklace_id])
  end

  def create
    @rental = Rental.new(rental_params)
    @necklace = Necklace.find(params[:necklace_id])
    @rental.necklace = @necklace
    @rental.user = current_user

    if @rental.save
      redirect_to rentals_path
    else

      render :new, status: :unprocessable_entity
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end
end
