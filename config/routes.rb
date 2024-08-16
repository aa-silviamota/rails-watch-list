Rails.application.routes.draw do
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
  # Root path
  root to: 'lists#index'
end

# Rails.application.routes.draw do
#   # Routes for lists and their associated bookmarks
#   resources :lists do
#     resources :bookmarks, only: [:create, :destroy]
#   end

#   # Optional routes for movies if you want users to view them independently
#   resources :movies, only: [:index, :show]

#   # Root route (optional, depending on what you want as the homepage)
#   root to: 'lists#index'
# end


# Rails.application.routes.draw do
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
#   # Can be used by load balancers and uptime monitors to verify that the app is live.
#   get "up" => "rails/health#show", as: :rails_health_check

#   # Defines the root path route ("/")
#   # root "posts#index"
# end
