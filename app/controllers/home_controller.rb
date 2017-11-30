class HomeController < ApplicationController
  def index
    @names = Home.all
  end

  def welcome
    @name = params[:keyword]
    
  end
end
