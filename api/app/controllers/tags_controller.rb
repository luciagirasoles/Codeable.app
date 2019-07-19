class TagsController < ApplicationController
  before_action :set_tag, only: [:show]

  def index
    @tags = Tag.includes(:mini_assignments)
    render json: {
      status: 'SUCCESS',
      message: 'Loaded Tags',
      data: @tags
    } , status: :ok
  end

  def show
    render json: {
      status: 'SUCCESS',
      message: 'Loaded Tag',
      data: @tag
    }
  end

  private
  def set_tag
    @tag = Tag.find(params[:id])
  end
end
