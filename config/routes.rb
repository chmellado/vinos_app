Rails.application.routes.draw do
  resources :nota
  resources :cargos
  resources :revista
  resources :enologos
  resources :cepas
  resources :vinos
  resources :ensamblajes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
