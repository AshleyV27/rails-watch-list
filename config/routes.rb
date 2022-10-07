Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # resources :bookmarks do
  #   collection do
  #     get :top
  #   end
  # end
  root to: "lists#index"
  resources :lists, only: %i[show create new] do
    resources :bookmarks, only: %i[new create index]
  end
  resources :bookmarks, only: %i[destroy]
end
