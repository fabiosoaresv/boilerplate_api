# frozen_string_literal: true

class VersionsController < ApplicationController
  def show
    render plain: ::BoilerplateApi::VERSION
  end
end
