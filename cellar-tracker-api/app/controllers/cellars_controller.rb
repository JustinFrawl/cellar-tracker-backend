class CellarsController < ApplicationController
  before_action :set_cellar, only: [:show, :update, :destroy]

  # GET /cellars
  def index
    @cellars = Cellar.all

    render json: @cellars
  end

  # GET /cellars/1
  def show
    render json: @cellar
  end

  # POST /cellars
  def create
    @cellar = Cellar.new(cellar_params)

    if @cellar.save
      render json: @cellar, status: :created, location: @cellar
    else
      render json: @cellar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cellars/1
  def update
    if @cellar.update(cellar_params)
      render json: @cellar
    else
      render json: @cellar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cellars/1
  def destroy
    @cellar.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cellar
      @cellar = Cellar.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cellar_params
      params.require(:cellar).permit(:userId, :beerId, :rating)
    end
end
