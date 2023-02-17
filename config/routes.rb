Rails.application.routes.draw do
  # get 'team/show'
  # Defines the root path route ("/")
  root "gossip#index"

  resources :gossip
  resources :contact, only: [:index]
  resources :team, only: [:index]

  # get '/gossip/home', to: 'gossip#home'
  # # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # get '/gossip/contact', to: 'gossip#contact'
  # get '/gossip/team', to: 'gossip#team'
  # get '/gossip/welcome/:id', to:'gossip#welcome'

end
