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

  private

  def necklace_params
    params.require(:necklace).permit(:name, :price, :description, :gemstone, :material, :photo)
  end
end
