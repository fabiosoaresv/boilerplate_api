# frozen_string_literal: true

Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :users

  get 'version', to: 'versions#show'

  scope :user do
    post '', to: 'users#create'
    get '/:id', to: 'users#show'
    put '/:id', to: 'users#update'
    delete '/:id', to: 'users#destroy'
  end

end
