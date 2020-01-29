Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  unauthenticated do
    root :to => 'sessions#new'
  end
  
  authenticated do
    root :to => 'records#index'
  end

  # root 'records#index'

  resources :records
  
end
