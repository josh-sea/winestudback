Rails.application.routes.draw do
  resources :qrcodes
  resources :wine_wineries
  resources :wineries
  resources :users
  resources :types
  resources :wines
  resources :countries
  resources :vintages
  resources :foods
  resources :wine_vintages
  resources :wine_types
  resources :wine_foods
  resources :wine_countries
  resources :regions
  resources :country_regions
  get '/scan/:value', :to => 'qrcodes#wine'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
