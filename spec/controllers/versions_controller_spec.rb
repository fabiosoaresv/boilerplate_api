require 'rails_helper'

RSpec.describe VersionsController, :type => :request do
  it 'should GET version and return last version' do
    get version_path
    expect(response.body).to eq(::BoilerplateApi::VERSION)
  end
end