Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # resources :bookmarks do
  #   collection do
  #     get :top
  #   end
  # end
  resources :bookmarks, only: [:destroy]
  resources :lists, only: [:new, :create, :show, :index, :destroy] do
    resources :bookmarks, only: [:new, :create]
  end
end
