Rails.application.routes.draw do
  # get 'plants/:plant_id/tags/new'

  resources :gardens do
    resources :plants, only: [:create]
  end

  resources :plants, only: [] do
    resources :plant_tags, only: [:new, :create]
  end

  resources :plants, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
