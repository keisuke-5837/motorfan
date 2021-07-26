Rails.application.routes.draw do
  devise_for :users
  root to: "car_bikes#index"
  resources :car_bikes
end
