require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    let(:mike){{name: "mike", password: "123456", password_confirmation: "123456", email: Faker::Internet.email}}
    describe 'create' do
        it 'creates a new user' do
            post :create, params: {user: mike}
            expect(User.last.name).to eq("mike")
        end
        it 'log you in' do
            post :create, params: {user: mike}
            expect(session[:user_id]).to eq(User.last.id)
        end
    end
end
