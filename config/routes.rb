Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "gossip#home"

  get '/gossip/home', to: 'gossip#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/gossip/contact', to: 'gossip#contact'
  get '/gossip/team', to: 'gossip#team'
  get '/gossip/welcome/:id', to:'gossip/welcome#find'

  # ressources :gossip

end
