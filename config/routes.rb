Rails.application.routes.draw do
  root to: "articles#index"

  resources :articles, only: [:new, :create, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
