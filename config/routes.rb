Rails.application.routes.draw do
  root 'home#index'
  resources :workers, :timeclock
  resources :manager, only: [:index]
  post '/timeclock/punch_in', to: 'timeclock#punch_in'

end
