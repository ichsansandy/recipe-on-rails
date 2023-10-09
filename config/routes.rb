Rails.application.routes.draw do
  get '/sign_out_user', to: 'users#sign_out_user', as: 'sign_out_user'
  devise_for :users
  
  authenticated :user do
    root 'public_recipes#index', as: :authenticated_root
  end

  unauthenticated do
    root 'public_recipes#splash', as: :unauthenticated_root
  end

  resources :public_recipes, only: %i[index]
end