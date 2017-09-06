Rails.application.routes.draw do


    # root 'welcome#index'
     # get 'users/profile/:id' => 'users#profile'
     #  get 'users/edit/:id/edit' => 'users#edit'
     #   get 'users/update/:id' => 'users#update'
    
     # resources :profiles
 
   get 'show/:id' => 'users#show'
   put 'update/:id' => 'users#update'
   get 'export/:id' => 'users#export'


  root 'home#index'
  devise_for :users, :controllers => { sessions: 'sessions' }
    
  
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
