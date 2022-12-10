# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module BoilerplateApi
  class Application < Rails::Application
    config.load_defaults 7.0
    config.api_only = true
    config.active_job.queue_adapter = :sidekiq
    config.session_store :cookie_store, key: '_interslice_session'
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use config.session_store, config.session_options
  end
end
