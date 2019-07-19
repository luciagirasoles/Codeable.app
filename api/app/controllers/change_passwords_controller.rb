class ChangePasswordsController < ApplicationController
  skip_before_action :require_login

  def update
    @user = User.find_by(email: params[:email])

    if params[:password].empty?
      render json: { errors: "can't be empty" },
             status: :bad_request
    elsif @user.update_attributes(password: params[:password])
      render json: { message: 'Password has been reset.' }
    else
      render json: { errors: 'Invalid password' },
             status: :bad_request
    end
  end
end
