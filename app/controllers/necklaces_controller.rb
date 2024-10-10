class NecklacesController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
    @necklaces = Necklace.all
  end

  def show
    @necklace = Necklace.find(params[:id])
  end

  def new
    @necklace = Necklace.new
  end

  def create
    @necklace = Necklace.new(necklace_params)
    @necklace.user = current_user
    if @necklace.save
      redirect_to necklace_path(@necklace)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @necklace = Necklace.find(params[:id])
    @necklace.destroy
    redirect_to rentals_path, status: :see_other
  end

  def edit
    @necklace = Necklace.find(params[:id])
  end

  def update
    @necklace = Necklace.find(params[:id])
    @necklace.update(necklace_params)
    redirect_to necklace_path(@necklace)
  end

  private

  def necklace_params
    params.require(:necklace).permit(:name, :price, :description, :gemstone, :material, :photo)
  end
end
