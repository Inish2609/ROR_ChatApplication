Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'chatroom#index'
  get '/login',to:'sessions#new'
  post '/login',to:'sessions#create'
  delete '/login' ,to:'sessions#destroy'
  get '/signup',to:'users#new'
  post '/signup',to:'users#create'
  # post '/messages',to:"messages#create"

  post '/messages', to: 'messages#create'  
end
