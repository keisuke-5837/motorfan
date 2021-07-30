Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
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
