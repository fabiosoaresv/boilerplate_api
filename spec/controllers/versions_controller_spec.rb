# frozen_string_literal: true

require 'rails_helper'
require 'swagger_helper'

RSpec.describe VersionsController, type: :request do
  it 'should GET version and return last version' do
    get version_path
    expect(response.body).to eq(::BoilerplateApi::VERSION)
  end

  path '/version' do
    get('list version') do
      response(200, 'successful') do

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
