class SessionController < ApplicationController
  def new
  end

  def create
    user = User.where(name: params[:user_name]).first
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, flash: { notice: "Welcome, #{user.name}" }
    end
  end

  def destroy
  end
end
