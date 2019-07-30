require 'rails_helper'
  def createSolution
    @solution = Solution.create(
      content: "solution 1", 
      status: "pending", 
      user_id: @user.id, 
      sublesson_id: @miniassigment.id
      )
  end

RSpec.describe SolutionsController, type: :controller do
  before do
    @user = User.create(name:"mayra1 navarro", email: "michi@able.com" , password: "123456")
    @modulo = Modulo.create(
      name: 'Ruby Fundamentals', 
      description: 'Ruby Fundamentals is an inmersive module for beginners'
    )
    @lesson = Lesson.create(
      title: 'Install Fest, CLI & Basic Programming', 
      modulo_id: @modulo.id 
    )
    @tag_m_assign = Tag.create(
      name: 'M-ASSIGN', 
      color: 'orange'
    )
    @tag_overview = Tag.create(
      name: 'OVERVIEW', 
      color: 'blue'
    )
    @sublesson = Sublesson.create(
      title: 'CLI Commands', 
      content: '## Learn some basic commands Unix', 
      tag_id: @tag_overview.id, 
      lesson_id: @lesson.id, 
      section: 'main'
    )
    @miniassigment = Sublesson.create(
      title: 'Create your first repository', 
      content: '## Create your first repository on Github and apply some commands', 
      tag_id: @tag_m_assign.id , 
      lesson_id: @lesson.id, 
      section: 'main'
    )
    allow(controller).to receive(:authenticate_token).and_return(true)
  end
  describe 'GET index' do
    it 'returns http status ok' do
      get :index
      expect(response).to have_http_status(:ok)
    end

    it 'render json with all products' do
      createSolution
      get :index
      solutions = JSON.parse(response.body)
      expect(solutions.size).to eq 1
    end
  end

  describe 'GET show' do
    it 'returns http status ok' do
      createSolution
      get :show, params: { id: @solution.id }
      
      expect(response).to have_http_status(:ok)

    end

    it 'return "not found" if element is not found' do
      get :show, params: { id: 999 }

      expect(response).to have_http_status(:not_found)
    end

    it 'return the correct solution' do
      createSolution
      get :show, params: { id: @solution.id }
      expectedSolution = JSON.parse(response.body)
     
      expect(expectedSolution["data"]["id"]).to eq(@solution.id)
    end
  end
  describe 'POST create' do
    it 'returns status created' do
      post :create, params: {
        content: "solution 1", 
        status: "pending", 
        user_id: @user.id, 
        sublesson_id: @miniassigment.id
      }
      expect(response).to have_http_status(:created)
    end

    it 'returns the created product' do
      post :create, params: {
        content: "solution 1", 
        status: "pending", 
        user_id: @user.id, 
        sublesson_id: @miniassigment.id
      }
      expectedSolution = JSON.parse(response.body)
      expect(expectedSolution["data"]).to have_key("id")
      expect(expectedSolution["data"]["status"]).to eq("pending")
    end
    it 'return error if sublesson is not a miniassigment' do
      post :create, params: {
        content: "solution 1", 
        status: "pending", 
        user_id: @user.id, 
        sublesson_id: @sublesson.id
      }
      expect(response).to have_http_status(405)
    
    end
  end
  describe "PATCH update" do
    it "returns http status ok" do
      createSolution
      patch :update, params: {id: @solution.id, status: "saved"}
      expect(response).to have_http_status(:ok)
    
    end
  
    it "returns the updated product" do
      createSolution
      patch :update, params: {id: @solution.id, status: "saved"}
      expectedSolution = JSON.parse(response.body)
      expect(expectedSolution["status"]).to eq("saved")
    end
  end

end
