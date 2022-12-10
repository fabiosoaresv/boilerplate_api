require 'swagger_helper'

RSpec.describe 'versions', type: :request do

  path '/version' do

    get('Get actual version') do
      response(200, 'Get actual version with successfully') do

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
