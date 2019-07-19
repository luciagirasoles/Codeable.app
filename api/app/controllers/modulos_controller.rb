class ModulosController < ApplicationController
  before_action :set_modulo, only: [:show]

    def index
      @modulos = Modulo.all
      render json: @modulos, status: :ok
    end
  
    def show
      render json: {
        status: 'SUCCESS',
        message: 'Loaded Modulo',
        data: @modulo
      }
    end
  
    private
    def set_modulo
      @modulo = Modulo.find(params[:id])
    end

end

