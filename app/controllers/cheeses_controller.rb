class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    # find cheese using id param from url
    cheese = Cheese.find(params[:id])
    # send a JSON response using that cheese object
    render json: cheese
  end

end
