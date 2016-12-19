Rails.application.routes.draw do 
  resources :users
  post 'authenticate', to: 'authentication#authenticate'
  resources :clients 
  resources :projects 
  resources :briefs
  resources :features 
  resources :epics 
  resources :stories 
  resources :given 
  resources :continuations
  resources :actions 
  resources :continuations
  resources :occurs
  resources :continuations         
end
