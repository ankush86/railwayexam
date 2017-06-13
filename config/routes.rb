Rails.application.routes.draw do
  resources :beverage_stores
  devise_for :users, controllers: { registrations: "registrations"}
  resources :time_tables
  resources :staffs
  resources :trains
  resources :stations
  root :to => 'time_tables#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
