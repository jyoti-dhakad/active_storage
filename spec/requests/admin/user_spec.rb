require 'rails_helper'

RSpec.describe "Admin::Users", type: :request do
  before do
    @admin_user = AdminUser.create(email: 'admin@example.com', password: 'password')
    user = FactoryBot.create(:user)
  end

  def authenticate_admin_user
    post admin_user_session_path, params: { admin_user: { email: @admin_user.email, password: 'password' } }
    follow_redirect!  
  end

  describe 'GET #index' do
    context 'when users fetch successfully' do
      before do
        authenticate_admin_user
        get '/admin/users'
      end

      it 'responds with status 200' do
        expect(response).to have_http_status(200)
      end
    end
  end

  describe 'GET #show' do
    it 'responds with status 200' do
     
      authenticate_admin_user
      # get admin_user_path(user)
      user = FactoryBot.create(:user)
      get "/admin/users/#{user.id}"
      expect(response).to have_http_status(200)
    end
  end

  
end
