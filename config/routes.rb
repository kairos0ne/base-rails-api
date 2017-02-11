Rails.application.routes.draw do 
  
  root to: 'visitors#new'
  post 'authenticate', to: 'authentication#authenticate'
  resources :users
  resources :clients 
  get 'clientcount', to: 'clients#count'
  resources :projects 
  get 'projectcount', to: 'projects#count'
  resources :briefs
  get 'briefcount', to: 'briefs#count'
  resources :features 
  resources :epics 
  resources :stories 
  resources :positions
  resources :sectors
  resources :givens
  resources :actions 
  resources :occurs
  resources :continuations
  
end

