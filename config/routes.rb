Rails.application.routes.draw do
  root to: 'articles#index'
  get '/articles/:id', to: 'articles#show', as: :article
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
