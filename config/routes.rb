Rails.application.routes.draw do
  resources :planets
  root "planets#index"
end
