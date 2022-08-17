Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  # get '/restaurants', to: 'restaurant#index'
  # get 'restaurants/new', to: 'restaurants#new'
  # post '/restaurants', to: 'restaurants#create'
  # get '/restaurants/:id', to: 'restaurants#show'
  # get '/restaurants/:id/reviews/new', to: 'restaurants#reviews_new'
  # get '/restaurants/:id/reviews', to: 'restaurants#reviews'
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end
