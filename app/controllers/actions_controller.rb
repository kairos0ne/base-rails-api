class ActionsController < ApplicationController
  before_action :set_action, only: [:show, :update, :destroy]

  # GET /occurs
  def index
    @action = Action.all

    render json: @action
  end

  # GET /occurs/1
  def show
    render json: @action
  end

  # POST /occurs
  def create
    @action = Action.new(occur_params)

    if @action.save
      render json: @action, status: :created, location: @action
    else
      render json: @action.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /occurs/1
  def update
    if @action.update(action_params)
      render json: @action
    else
      render json: @action.errors, status: :unprocessable_entity
    end
  end

  # DELETE /occurs/1
  def destroy
    @action.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_occur
      @action = Action.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def action_params
      params.require(:action).permit(:action, :story_id)
    end
end
