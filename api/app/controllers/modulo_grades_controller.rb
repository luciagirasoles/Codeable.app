class ModuloGradesController < ApplicationController
  def index
    render json: current_user.modulo_grades, status: :ok
  end

  def show
  end
end
