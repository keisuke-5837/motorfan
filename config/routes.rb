Rails.application.routes.draw do
  devise_for :users
  root to: "machines#index"
  resources :machines do
    collection do
      get :car
    end
    collection do
      get :bike
    end
  end
  resources :users
end
