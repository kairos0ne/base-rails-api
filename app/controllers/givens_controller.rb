class GivensController < ApplicationController
  before_action :set_given, only: [:show, :update, :destroy]

  # GET /givens
  def index
    @givens = Given.all

    render json: @givens
  end

  # GET /givens/1
  def show
    render json: @given
  end

  # POST /givens
  def create
    @given = Given.new(given_params)

    if @given.save
      render json: @given, status: :created, location: @given
    else
      render json: @given.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /givens/1
  def update
    if @given.update(given_params)
      render json: @given
    else
      render json: @given.errors, status: :unprocessable_entity
    end
  end

  # DELETE /givens/1
  def destroy
    @given.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_given
      @given = Given.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def given_params
      params.require(:given).permit(:given, :story_id)
    end
end
