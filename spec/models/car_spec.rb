require 'rails_helper'

RSpec.describe Car, type: :model do
  subject do
    @user = User.create(name: 'Hammas Bin Saleem', email: 'hammas@gmail.com', password: 'hammas12')
    @car = Car.new(name: 'Maclaren', model: 'F1', per_day_amount: 200, car_image: '123.png', user_id: @user.id)
  end
  before { subject.save }

  describe 'Testing car values' do
    it 'should return the name' do
      expect(subject.name).to eq 'Maclaren'
    end
    it 'should return the model' do
      expect(subject.model).to eq 'F1'
    end
    it 'should return the per day amount' do
      expect(subject.per_day_amount).to eq 200
    end
    it 'should return the car image' do
      expect(subject.car_image).to eq '123.png'
    end
    it 'should return the user id' do
      expect(subject.user_id).to eq @user.id
    end
  end

  describe 'Testing car model validations' do
    it 'should validate the name' do
      subject.name = ''
      expect(subject).not_to be_valid
    end
    it 'should validate the model' do
      subject.model = ''
      expect(subject).not_to be_valid
    end
    it 'should validate the per day amount' do
      subject.per_day_amount = ''
      expect(subject).not_to be_valid
    end
    it 'should validate the user id' do
      subject.per_day_amount = ''
      expect(subject).not_to be_valid
    end
    it 'should validate the car image' do
      subject.car_image = ''
      expect(subject).not_to be_valid
    end
  end
end
