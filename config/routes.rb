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
  
  resources :foods, only: %i[index new create destroy]
  resources :recipes, except: :edit do
    member do
      patch 'toggle_public'
    end
    resources :recipe_foods, only: %i[new create destroy]
  end 

  resources :shopping_lists, only: [:index] do
    get :generate, on: :collection
  end
end
