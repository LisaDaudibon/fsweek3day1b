Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/static_pages/contact', to: 'static_pages#contact'
  
  # Defines the root path route ("/")
  # root "articles#index"
end
