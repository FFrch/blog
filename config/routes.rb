Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'articles#index', as: :articles
  # # get "articles", to: "articlex#index"
  # get "articles/:id", to: "articles#show", as: :article
  # get "articles/new", to: "articles#new"
  # post "articles", to: "articles#create"

  resources :articles, only: [:new, :create, :show]
end
