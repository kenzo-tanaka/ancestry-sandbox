Rails.application.routes.draw do
  root 'products#index'
  resources :products
  get :dynamic_select_category, to: 'products#dynamic_select_category'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
