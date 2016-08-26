Rails.application.routes.draw do


  root 'shared#home'

  devise_for :users, controllers: {
       registrations: 'users/registrations'
  }

  get '/write', to: 'posts#new', as: 'new_post'
  get '/post/:id', to: 'posts#show', as: 'post'
  get 'blogger/:id', to: 'bloggers#show', as: 'blogger'

  post '/posts/new', to: 'posts#create', as: 'posts'
  post '/posts/:id', to: 'comments#create', as: 'comment'

  put '/posts/:id', to: 'comments#update', as: 'update_comment'
end
