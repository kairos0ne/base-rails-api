Rails.application.routes.draw do
  resources :briefs
  resources :types
  resources :projects
  resources :clients
  post 'authenticate', to: 'authentication#authenticate'
end
