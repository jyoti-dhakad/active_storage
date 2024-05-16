require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe 'GET #index' do
    it 'returns a successful response' do
      get '/users'
      expect(response).to be_successful
    end
  end

end
