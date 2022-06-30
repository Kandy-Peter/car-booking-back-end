require 'rails_helper'

RSpec.describe 'Cars', type: :request do
  before do
    @user = User.create!(id: 1, name: 'kandy Peter', email: 'kandyp@mail.com', password: '12345678')
    Car.create!(name: 'Range Rover', model: 'Sport', per_day_amount: 100, reserved: true, car_image: 'image.png', user_id: 1, id: 1)
    Car.create!(name: 'Jeep',  model: 'Rubicon', per_day_amount: 205, reserved: true, car_image: 'image.png', user_id: 1, id: 2)
  end

  describe 'get car list' do
    it 'Get list of cars: test the size' do
      get '/api/v1/cars'
      expect(JSON.size).to eq 2
    end

    it 'Return the car name' do
      get '/api/v1/cars'
      result = JSON(response.body)
      car = result[0]
      expect(car['name']).to eq 'Range Rover'
    end

    it 'Return the car description' do
      get '/api/v1/cars'
      result = JSON(response.body)
      car = result[0]
      expect(car['model']).to eq 'Sport'
    end

    it 'Returns status code 200' do
      get '/api/v1/cars'
      expect(response).to have_http_status(:success)
    end
  end
end