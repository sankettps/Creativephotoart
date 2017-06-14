Rails.application.routes.draw do
  resources :app_adds
  root to: "apps#index" 
  resources :apps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
