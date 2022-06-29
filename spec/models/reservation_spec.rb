require 'rails_helper'

RSpec.describe Reservation, type: :model do
  subject do
    @user = User.create(name: 'Hammas Bin Saleem', email: 'hammas@gmail.com', password: 'hammas12')
    @car = Car.create(name: 'Maclaren', model: 'F1', per_day_amount: 200, car_image: '123.png', user_id: @user.id)
    @reservation = Reservation.new(city: 'FSD', date: '11-Jan-2023', car_id: @car.id, user_id: @user.id)
  end
  before {subject.save}

  describe 'Testing reservation values' do
    it 'should return the city' do
      expect(subject.city).to eq 'FSD'
    end
    it 'should return the date' do
      expect(subject.date.to_s).to eq '2023-01-11'
    end
    it 'should return the car id' do
      expect(subject.car_id).to eq @car.id
    end
    it 'should return the user id' do
      expect(subject.user_id).to eq @user.id
    end
  end

  describe 'Testing car model validations' do
    it 'should validate the city' do
      subject.city = ''
      expect(subject).not_to be_valid
    end
    it 'should validate the date' do
      subject.date = ''
      expect(subject).not_to be_valid
    end
    it 'should validate the user id' do
      subject.user_id = ''
      expect(subject).not_to be_valid
    end
    it 'should validate the car id' do
      subject.car_id = ''
      expect(subject).not_to be_valid
    end
  end
end
