class NecklacesController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
    @necklaces = Necklace.all
    if params[:query].present?
      sql_subquery = "name ILIKE :query OR gemstone ILIKE :query OR material ILIKE :query"
      @necklaces = @necklaces.where(sql_subquery, query: "%#{params[:query]}%")
    end
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
