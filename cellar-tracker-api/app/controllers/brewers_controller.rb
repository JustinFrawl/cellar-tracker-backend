class BrewersController < ApplicationController
  before_action :set_brewer, only: [:show, :update, :destroy]

  # GET /brewers
  def index
    @brewers = Brewer.all

    render json: @brewers
  end

  # GET /brewers/1
  def show
    render json: @brewer
  end

  # POST /brewers
  def create
    @brewer = Brewer.new(brewer_params)

    if @brewer.save
      render json: @brewer, status: :created, location: @brewer
    else
      render json: @brewer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /brewers/1
  def update
    if @brewer.update(brewer_params)
      render json: @brewer
    else
      render json: @brewer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /brewers/1
  def destroy
    @brewer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brewer
      @brewer = Brewer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def brewer_params
      params.require(:brewer).permit(:breweryId, :name)
    end
end
