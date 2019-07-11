# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  before(:each) do
    User.destroy_all
    @user1 = User.create(name: 'Ricardo Yrupailla', email: 'rsantiago@able.co', password: '123456')
    @user2 = User.create(name: 'Mayra Navarro', email: 'mnavarro@able.co', password: '123456')
    @user3 = User.create(name: 'carlos Sandoval', email: 'csandoval@able.co', password: '123456')
  end

  describe 'Testing login' do
    it 'return unauthorized' do
      post :create
      expect(response).to have_http_status(:unauthorized)
    end

    it 'tests login' do
      request.headers['Content-Type'] = 'application/json' # adding access permission
      post :create, params: { email: @user1.email, password: @user1.password }
      expect(response).to have_http_status(:ok)
    end
  end
end
