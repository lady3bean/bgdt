class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by email: params[:login][:email]

    if user && user.authenticate(params[:login][:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Successfully logged in'
    else
      render :new, notice: 'Invalid email or password'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Successfully logged out'
  end
end
