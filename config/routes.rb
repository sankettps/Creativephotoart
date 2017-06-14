Rails.application.routes.draw do
  root to: "apps#index" 
  get "apps/app_by_name"
  resources :app_adds
  resources :apps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
