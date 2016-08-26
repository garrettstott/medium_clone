Rails.application.routes.draw do
  root 'shared#home'

  devise_for :users, controllers: {
       registrations: 'users/registrations'
  }

  get '/write', to: 'posts#new', as: 'new_post'

  post '/posts/new', to: 'posts#create', as: 'posts'
end
