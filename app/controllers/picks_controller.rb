class PicksController < ApplicationController


  def new
    @pick = Pick.new 
  end
end
