# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HelloWorldJob do
  it 'should execute job sync and return hello world' do
    expect(HelloWorldJob.perform_now).to eq('Hello World!')
  end

  it 'should execute job async and return hello world' do
    ActiveJob::Base.queue_adapter = :test
    ActiveJob::Base.queue_adapter.perform_enqueued_jobs = true
    expect { HelloWorldJob.perform_later }.to have_performed_job(HelloWorldJob)
  end
end
