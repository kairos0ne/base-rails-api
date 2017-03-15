class OccurContinuationsController < ApplicationController
  before_action :set_occur_continuation, only: [:show, :update, :destroy]

  # GET /occur_continuations
  def index
    @occur_continuations = OccurContinuation.all

    render json: @occur_continuations
  end

  # GET /occur_continuations/1
  def show
    render json: @occur_continuation
  end

  # POST /occur_continuations
  def create
    @occur_continuation = OccurContinuation.new(occur_continuation_params)

    if @occur_continuation.save
      render json: @occur_continuation, status: :created, location: @occur_continuation
    else
      render json: @occur_continuation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /occur_continuations/1
  def update
    if @occur_continuation.update(occur_continuation_params)
      render json: @occur_continuation
    else
      render json: @occur_continuation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /occur_continuations/1
  def destroy
    @occur_continuation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_occur_continuation
      @occur_continuation = OccurContinuation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def occur_continuation_params
      params.require(:occur_continuation).permit(:continuation, :occur_id)
    end
end
