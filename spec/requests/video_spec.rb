require 'rails_helper'

RSpec.describe "Videos", type: :request do
  describe 'GET #index' do
    it 'returns a successful response' do
      get '/videos'
      expect(response).to be_successful
    end
  end

end
