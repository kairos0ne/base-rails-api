class UsersController < ApplicationController
  skip_before_action :authenticate_request, only: [:create, :update]
  wrap_parameters :user, include: [:email, :name, :username, :password, :password_confirmation, :id, :password_digest], only: [:create, :update]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1 Needs amending for private function
  def show
    @user = User.where(:id => params[:id])

    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
  
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params).valid? 
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

     # GET users/:id/clients Gives only clients where the client id is given as a param
  def clients
    @userclients = Client.joins(:user).merge(User.where(:id => params[:id]))

    render json: @userclients
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:email, :name, :username, :password, :password_confirmation, :id, :password_digest)
    end
end
