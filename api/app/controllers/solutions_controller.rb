class SolutionsController < ApplicationController
  before_action :set_solution, only: [:show, :update]

  def index
    solution = Solution.all
    render json: solution, status: :ok
  end

  def show
    render json: {
      status: 'SUCCESS',
      message: 'Loaded Solution',
      data: @solution
    }
  end
  
  def create
    sublesson = Sublesson.find(params[:sublesson_id])
    
    if sublesson.isMiniassigment?
    solution = Solution.create(
      content: params[:content], 
      status: params[:status], 
      user_id: params[:user_id], 
      sublesson_id: params[:sublesson_id]
     )

    render json:{
      status: 'created',
      message: 'Created Solution',
      data: solution
    }, status: :created
    else
      render json:{
        status: 'not allowed',
        message: 'Sublesson selected is not a Miniassigment',
      }, status: 405
    end
  end

  def update
  params.keys.each do |key|
    if key != :id && @solution.attributes.key?(key)
      @solution[key] = params[key]
    end
  end
  @solution.save
  render json:{
    status: 'saved',
    message: 'Updated Solution',
    data: @solution
  }
  end
 private
 def set_solution
  @solution = Solution.find(params[:id])
 end
  
 rescue_from ActiveRecord::RecordNotFound do |e|
  render json: { message: e.message }, status: :not_found
end

end
