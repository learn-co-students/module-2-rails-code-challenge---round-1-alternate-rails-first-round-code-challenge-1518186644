Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/sweets', to: "sweets#index", as: "sweets"
  # get '/vendors', to: "vendors#index", as: "vendors"
  # get '/vendors', to: "vendors#show", as: "vendor"

  resources :vendors, only: [:index, :show]
  resources :sweets, only: [:index, :show]
  resources :vendorsweets
end
