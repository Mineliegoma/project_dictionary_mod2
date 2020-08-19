require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'authenticate' do
    it 'returns the user if credentials match' do
      user = User.new()
      user.name = "mike"
      user.password = "123456"
      user.email = Faker::Internet.email
      expect (user.authenticate("123456")).to eq(user)
    end
    it 'returns falsey if credentials dont match' do 
      user = User.new()
      user.name = "mike"
      user.password = "123456"
      user.email = Faker::Internet.email
      expect (user.authenticate("123456")).to eq(user)
    end
  end
end
