class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :update, :destroy]

  # GET /clients
  def index
    @clients = Client.all.order(updated_at: :desc)

    render json: @clients
  end

  # GET /clients/1
  def show
    render json: @client
  end

  # POST /clients
  def create
    @client = Client.new(client_params)

    if @client.save
      render json: @client, status: :created, location: @client
    else
      render json: @client.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clients/1
  def update
    if @client.update(client_params)
      render json: @client
    else
      render json: @client.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clients/1
  def destroy
    @client.destroy
  end

  # GET /clientcount
  def count
    @clientcount = Client.all.size

    render json: @clientcount
  end

   # GET clients/:id/usrerclients Gives only clients where the client id is given as a param
  def userclients
    @userclients = User.joins(:clients).merge(Client.where(:id => params[:id]))

    render json: @userclients
  end

  # GET clients/:id/usrerclients Gives only clients where the client id is given as a param
  def clientuser
    @clientuser = Client.joins(:user).merge(User.where(:id => params[:id]))

    render json: @clientuser
  end

  # GET clients/:id/projects Gives the specific projects for a single client
  def projects
    @projects = Project.where(:client_id => params[:id])
    render json: @projects
  end

   # GET clients/:id/projects Gives the specific projects for a single client
  def firstclient
    @firstclient = Client.where(:id => 1)
    render json: @firstclient
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def client_params
      params.require(:client).permit(:name, :business_area, :user_id)
    end
end
