class SublessonsController < ApplicationController
  

  def index
    @sublessons = Sublesson.all
    render json: @sublessons , status: :ok
  end

  def show
    render json: Sublesson.find(params[:id])
  end

end
