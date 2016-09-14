Rails.application.routes.draw do

  root :to => 'images#index'

  resources :users do
    resources :images
  end
end
