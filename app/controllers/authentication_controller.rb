 # app/controllers/authentication_controller.rb
 
class AuthenticationController < ApplicationController
  skip_before_action :authenticate_request
  
  def authenticate
    command = AuthenticateUser.call(params[:email], params[:password])

    if command.success?
      @user = User.find_by_email(params[:email])
      @userid = @user.id
      @username = @user.username
      render json:  {user_id: @userid, user_name: @username, auth_token: command.result }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end
end