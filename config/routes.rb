Rails.application.routes.draw do
  root to: "home#home_page" 
  get "apps/app_add_ids"
  get "apps/app_frames"
  get "home/api_help"
  resources :app_devices
  resources :devices
  resources :app_frames
  resources :app_adds
  resources :apps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
