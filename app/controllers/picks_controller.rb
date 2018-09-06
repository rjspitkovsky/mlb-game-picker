require 'pry'
class PicksController < ApplicationController


  def new
    @pick = Pick.new
  end

  def create
    binding.pry 
  end
end
