Rails.application.routes.draw do
  root 'application#hello'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get 'secrets/show', to: 'secrets#show', as: 'secret'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

