Rails.application.routes.draw do 
  resources :positions
  resources :users
  post 'authenticate', to: 'authentication#authenticate'
  get 'clientcount', to: 'clients#count'
  get 'projectcount', to: 'projects#count'
  get 'briefcount', to: 'briefs#count'
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
  resources :positions   
end
