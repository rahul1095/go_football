Rails.application.routes.draw do


    # root 'welcome#index'
    root 'home#index'
  devise_for :users
  resources :conversations, only: [:create] do

   member do
      post :close
    end

   end

   resources :conversations, only: [:create] do
    resources :messages, only: [:create]
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
