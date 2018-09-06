
class PicksController < ApplicationController
  before_action :require_login

  def new
    @pick = Pick.new

  end

  def create
    @pick = Pick.new
    @pick.date = Date.new
    @pick.winners = params[:winners]
    @pick.user_id = session[:user_id]

     if @pick.save
       redirect_to root_path
     else
       render :new
     end
  end
end
