class ActionContinuationsController < ApplicationController
  before_action :set_action_continuation, only: [:show, :update, :destroy]

  # GET /action_continuations
  def index
    @action_continuations = ActionContinuation.all

    render json: @action_continuations
  end

  # GET /action_continuations/1
  def show
    render json: @action_continuation
  end

  # POST /action_continuations
  def create
    @action_continuation = ActionContinuation.new(action_continuation_params)

    if @action_continuation.save
      render json: @action_continuation, status: :created, location: @action_continuation
    else
      render json: @action_continuation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /action_continuations/1
  def update
    if @action_continuation.update(action_continuation_params)
      render json: @action_continuation
    else
      render json: @action_continuation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /action_continuations/1
  def destroy
    @action_continuation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_action_continuation
      @action_continuation = ActionContinuation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def action_continuation_params
      params.require(:action_continuation).permit(:continuation, :action_id)
    end
end
