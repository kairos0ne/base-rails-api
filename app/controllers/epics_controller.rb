class EpicsController < ApplicationController
  before_action :set_epic, only: [:show, :update, :destroy]

  # GET /epics
  def index
    @epics = Epic.all

    render json: @epics
  end

  # GET /epics/1
  def show
    render json: @epic
  end

  # POST /epics
  def create
    @epic = Epic.new(epic_params)

    if @epic.save
      render json: @epic, status: :created, location: @epic
    else
      render json: @epic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /epics/1
  def update
    if @epic.update(epic_params)
      render json: @epic
    else
      render json: @epic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /epics/1
  def destroy
    @epic.destroy
  end

    # GET /clients
  def count
    @epiccount = Epic.all.size

    render json: @epiccount
  end

    # GET epics/:id/projects Gives the specific projects for a single client
  def stories
    @stories = Story.where(:epic_id => params[:id])
    render json: @stories
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_epic
      @epic = Epic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def epic_params
      params.require(:epic).permit(:epic, :project_id)
    end
end
