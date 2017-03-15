class GivenContinuationsController < ApplicationController
  before_action :set_given_continuation, only: [:show, :update, :destroy]

  # GET /given_continuations
  def index
    @given_continuations = GivenContinuation.all

    render json: @given_continuations
  end

  # GET /given_continuations/1
  def show
    render json: @given_continuation
  end

  # POST /given_continuations
  def create
    @given_continuation = GivenContinuation.new(given_continuation_params)

    if @given_continuation.save
      render json: @given_continuation, status: :created, location: @given_continuation
    else
      render json: @given_continuation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /given_continuations/1
  def update
    if @given_continuation.update(given_continuation_params)
      render json: @given_continuation
    else
      render json: @given_continuation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /given_continuations/1
  def destroy
    @given_continuation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_given_continuation
      @given_continuation = GivenContinuation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def given_continuation_params
      params.require(:given_continuation).permit(:continuation, :given_id)
    end
end
