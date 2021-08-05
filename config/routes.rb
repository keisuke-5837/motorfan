Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end

  root to: "site_top_pages#index"
  resources :machines do
    collection do
      get :car
    end
    collection do
      get :car_show
    end
    collection do
      get :bike
    end
    collection do
      get :bike_show
    end
  end
  resources :users
end
