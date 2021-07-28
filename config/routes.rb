Rails.application.routes.draw do
  devise_for :users
  root to: "machines#index"
  resources :machines do
    # resources :cars, :only[:index]
    # resources :bikes, :only[:index]
  end
end
