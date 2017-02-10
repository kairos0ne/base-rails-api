Rails.application.routes.draw do 
  post 'authenticate', to: 'authentication#authenticate'
  post 'users/', to: 'users#create'
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
  resources :given 
  resources :actions 
  resources :occurs
  resources :continuations
  root to: 'visitors#new'
end

