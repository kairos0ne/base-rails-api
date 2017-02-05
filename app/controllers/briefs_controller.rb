class BriefsController < ApplicationController
  before_action :set_brief, only: [:show, :update, :destroy]

  # GET /briefs
  def index
    @briefs = Brief.all

    render json: @briefs
  end

  # GET /briefs/1
  def show
    render json: @brief
  end

  # POST /briefs
  def create
    @brief = Brief.new(brief_params)

    if @brief.save
      render json: @brief, status: :created, location: @brief
    else
      render json: @brief.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /briefs/1
  def update
    if @brief.update(brief_params)
      render json: @brief
    else
      render json: @brief.errors, status: :unprocessable_entity
    end
  end

  # DELETE /briefs/1
  def destroy
    @brief.destroy
  end

    # GET /clients
  def count
    @briefcount = Brief.all.size

    render json: @briefcount
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brief
      @brief = Brief.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def brief_params
      params.require(:brief).permit(:objective, :overview, :status, :status_value, :project_id)
    end
end
