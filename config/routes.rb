Rails.application.routes.draw do
  resources :developers
  resources :projects
  
  root 'projects#index'
end
