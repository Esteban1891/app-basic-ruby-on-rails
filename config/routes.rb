Rails.application.routes.draw do
  get 'home/index'
  get 'articles/new', to:'articles#new'
  post 'articles', to:'articles#create'
  get 'articles/:id', to:'articles#show'
  get 'articles/:id/edit', to:'articles#edit'
  patch 'articles/:id', to:'articles#update', as: :article
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
