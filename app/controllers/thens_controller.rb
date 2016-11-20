class ThensController < ApplicationController
  before_action :set_then, only: [:show, :update, :destroy]

  # GET /thens
  def index
    @thens = Then.all

    render json: @thens
  end

  # GET /thens/1
  def show
    render json: @then
  end

  # POST /thens
  def create
    @then = Then.new(then_params)

    if @then.save
      render json: @then, status: :created, location: @then
    else
      render json: @then.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /thens/1
  def update
    if @then.update(then_params)
      render json: @then
    else
      render json: @then.errors, status: :unprocessable_entity
    end
  end

  # DELETE /thens/1
  def destroy
    @then.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_then
      @then = Then.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def then_params
      params.require(:then).permit(:text, :story_id)
    end
end
