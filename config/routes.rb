Rails.application.routes.draw do

  get 'home/index'

  resources :users
  resources :articles

  resources :session, :only => [:new, :create, :destroy]

  get '/signup' => 'users#new'
  get '/signin' => 'session#new'
  get '/signout' => 'session#destroy'

#Partie API du projet
  namespace :api do
    namespace :v1 do
      resources :articles
      resources :users
      resources :comment

      
      #Users
      post '/users/authenticate' => 'users#authenticate'
      post '/users/register' => 'users#register'

      #Articles
      get '/articles/single' => 'articles#show'
      get '/articles/fetch' => 'articles#fetch'
      post '/articles/create' => 'articles#create'
      delete '/articles/delete' => 'articles#destroy'
      put '/articles/udpate' => 'articles#update'
      
    end
  end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end