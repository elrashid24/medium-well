class Api::SessionsController < ApplicationController
    def create
    @user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password]
    )

    if @user
      sign_in(@user)
      render "api/users/show"
    else
      render json: ["Please enter a valid email address."], status: 401
    end
  end

  def destroy
    @user = current_user
    if @user
      sign_out
      render "api/users/show"
    else
      render json: ["Sign in to get personalized story recommendations, follow authors and topics you love, and interact with stories."], status: 404
    end
  end
end
