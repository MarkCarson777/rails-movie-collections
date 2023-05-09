Rails.application.routes.draw do
  root to: 'lists#index'
  get "/pages/:page" => "pages#show"
  resources :lists do
    resources :bookmarks, only: [ :new, :create ]
    resources :reviews, only: [ :create ]
  end
  resources :bookmarks, only: [ :destroy ]
  resources :reviews, only: [ :destroy ]
end
