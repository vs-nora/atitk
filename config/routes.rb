Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "application#root"
  resources :sections
  resources :profiles
  resources :profile_sections
end
