Rails.application.routes.draw do
  root 'home#index'
  resources :workers, :timeclock
  resources :manager, only: [:index]
end
