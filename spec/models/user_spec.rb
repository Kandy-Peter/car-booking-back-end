require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    @user = User.new(name: 'Hammas Bin Saleem', email: 'hammas@gmail.com', password: 'hammas12')
  end
  before { subject.save }

  describe 'Testing user values' do
    it 'should return the name' do
      expect(subject.name).to eq 'Hammas Bin Saleem'
    end
    it 'should return the email' do
      expect(subject.email).to eq 'hammas@gmail.com'
    end
    it 'should return the password' do
      expect(subject.password).to eq 'hammas12'
    end
  end

  describe 'Testing user model validations' do
    it 'should return the name' do
      subject.name = 'user'
      expect(subject).not_to be_valid
    end
    it 'should return the email' do
      subject.email = ''
      expect(subject).not_to be_valid
    end
    it 'should return the password' do
      subject.password = '123456'
      expect(subject).not_to be_valid
    end
  end
end
