require 'rails_helper'

RSpec.describe UsersController, type: :request do
  context 'should create a user and return ' do
    it 'successfully' do
      post '/user', params: { email: 'test@test.io', password: 'somepass123'}
      user = User.find_by(email: 'test@test.io')
      expect(response.code).to eq('201')
      expect(response.body).to eq(user.to_json)
    end
  end

  context 'should show the user attributes and return' do
    it 'successfully' do
      user = FactoryBot.create(:user)
      get "/user/#{user.id}"
      expect(response.code).to eq('200')
      expect(response.body).to eq(user.to_json)
    end
  end

  context 'should update the user and return' do
    it 'successfully' do
      user = FactoryBot.create(:user)
      put "/user/#{user.id}", params: { email: 'new@email.io' }
      expect(response.code).to eq('200')
      expect(JSON.parse(response.body)['email']).to eq(user.reload.email)
    end
  end

  context 'should delete the user and return' do
    it 'successfully' do
      user = FactoryBot.create(:user)
      delete "/user/#{user.id}"
      expect(response.code).to eq('200')
    end
  end

  context 'should doesnt show the non existent user and return' do
    it 'user not found' do
      random_non_existent_id = rand(99999)
      get "/user/#{random_non_existent_id}"
      expect(response.code).to eq('404')
      expect(JSON.parse(response.body)).to eq('User not found')
    end
  end
end
