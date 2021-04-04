class SessionsController < ApplicationController
  def new
    @session = User.new
  end

  def create
    @session = User.find_by(
      email: params[:user][:email],
    )

    if @session && @session.authenticate(params[:user][:password])
      session[:user_id] = @session.id
      redirect_to stories_path
    else
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
