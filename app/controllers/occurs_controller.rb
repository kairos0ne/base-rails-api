class OccursController < ApplicationController
  before_action :set_occur, only: [:show, :update, :destroy]

  # GET /occurs
  def index
    @occurs = Occur.all

    render json: @occurs
  end

  # GET /occurs/1
  def show
    render json: @occur
  end

  # POST /occurs
  def create
    @occur = Occur.new(occur_params)

    if @occur.save
      render json: @occur, status: :created, location: @occur
    else
      render json: @occur.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /occurs/1
  def update
    if @occur.update(occur_params)
      render json: @occur
    else
      render json: @occur.errors, status: :unprocessable_entity
    end
  end

  # DELETE /occurs/1
  def destroy
    @occur.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_occur
      @occur = Occur.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def occur_params
      params.require(:occur).permit(:occurs, :story_id)
    end
end
