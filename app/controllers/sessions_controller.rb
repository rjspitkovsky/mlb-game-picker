class SessionsController < ApplicationController

  def new
  end

  def create
    if @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        flas[:notice] = "Invalid username or password"
        redirect_to '/login'
      end

    else
      flash[:notice] = "We cannot find an account with that e-mail"
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :user_id
    redirect_to root_path
  end

end
