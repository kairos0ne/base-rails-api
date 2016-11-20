class ContinuationsController < ApplicationController
  before_action :set_continuation, only: [:show, :update, :destroy]

  # GET /continuations
  def index
    @continuations = Continuation.all

    render json: @continuations
  end

  # GET /continuations/1
  def show
    render json: @continuation
  end

  # POST /continuations
  def create
    @continuation = Continuation.new(continuation_params)

    if @continuation.save
      render json: @continuation, status: :created, location: @continuation
    else
      render json: @continuation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /continuations/1
  def update
    if @continuation.update(continuation_params)
      render json: @continuation
    else
      render json: @continuation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /continuations/1
  def destroy
    @continuation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_continuation
      @continuation = Continuation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def continuation_params
      params.require(:continuation).permit(:continuation, :story_id)
    end
end
