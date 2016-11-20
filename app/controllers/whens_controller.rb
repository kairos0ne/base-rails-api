class WhensController < ApplicationController
  before_action :set_when, only: [:show, :update, :destroy]

  # GET /whens
  def index
    @whens = When.all

    render json: @whens
  end

  # GET /whens/1
  def show
    render json: @when
  end

  # POST /whens
  def create
    @when = When.new(when_params)

    if @when.save
      render json: @when, status: :created, location: @when
    else
      render json: @when.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /whens/1
  def update
    if @when.update(when_params)
      render json: @when
    else
      render json: @when.errors, status: :unprocessable_entity
    end
  end

  # DELETE /whens/1
  def destroy
    @when.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_when
      @when = When.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def when_params
      params.require(:when).permit(:text, :story_id)
    end
end
