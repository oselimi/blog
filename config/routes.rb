Rails.application.routes.draw do

  get '/articles', to: 'articles#index'
  get '/articles/new', to: 'articles#new', as: :new_article
  post '/articles', to: 'articles#create'
  get '/articles/:id', to: 'articles#show', as: :article

  root to: 'articles#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
