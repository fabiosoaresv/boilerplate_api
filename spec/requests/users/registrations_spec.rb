require 'swagger_helper'

RSpec.describe 'registrations', type: :request do

  path '/users' do
    post('Sign up new user') do
      response(200, 'Create a new user with successfully') do
        let(:user) { { "user" => { "email": "example@example.io", "password": "pass1234" } } }
        consumes 'application/json'
        parameter name: :user, in: :body, type: :object, required: true, schema: {
          type: :object,
          properties: {
            user: {
              type: :object,
              properties: {
                email: { type: :string },
                password: {type: :string }
              }
            }
          }
        }
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: { user: { email: 'example@example.io', password: 'pass1234'}}
            }
          }
        end
        run_test!
      end
    end
  end
end
