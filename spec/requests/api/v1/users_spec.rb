require 'rails_helper'

RSpec.describe 'Api::V1::Users', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/api/v1/users'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /create' do
    before do
      post '/api/v1/users',
           params: { id: '1', name: 'Hammas Saleem', email: 'hammas@mail.com', password: 'hammas12' }
    end
    it 'returns http success' do
      expect(response).to have_http_status(:ok)
    end
    # it 'returns the name' do
    #   expect(JSON.parse(response.body)['name']).to eq 'Hammas Saleem'
    # end
    # it 'returns the email' do
    #   expect(JSON.parse(response.body)['email']).to eq 'hammas@mail.com'
    # end
    # it 'returns the password' do
    #   expect(JSON.parse(response.body)['password']).to eq 'hammas12'
    # end
  end
end
