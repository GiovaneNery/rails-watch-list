Rails.application.routes.draw do
  # get "lists", to: "lists#index"
  # get "lists/:id", to: "lists#show"
  # get "lists/new", to: "lists#new"
  # post "lists", to: "lists#create"
  # get "lists/:id/bookmarks/new", to: "bookmarks#new"
  # post "lists/:id/bookmarks", to: "bookmarks#create"
  # delete "bookmarks/:id", to: "bookmarks#destroy"

  resources :lists, only: %i[index create show new destroy] do
    resources :bookmarks, only: %i[new create]
  end

  resources :bookmarks, only: [:destroy]
end
