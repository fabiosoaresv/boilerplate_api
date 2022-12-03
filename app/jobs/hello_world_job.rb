class HelloWorldJob < ApplicationJob
  queue_as :default

  def perform
    'Hello World!'
  end

end
