Rails.application.routes.draw do
  devise_for :users
  root "todos#index"

  resources :todos do
    collection do
      get 'search', to: 'todos#search'
    end

    member do
      get 'highlight', to: 'todos#highlight'
    end
  end

end
