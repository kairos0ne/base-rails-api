Rails.application.routes.draw do 
  
  post 'authenticate', to: 'authentication#authenticate'
  
  resources :users do
    member do
      get :clients
    end
  end

  resources :clients do 
    collection do 
      get 'count'
    end
    collection do
      get 'firstclient'
    end
    member do 
      get :userclients, :clientuser, :projects, :position, :sector
    end
  end

  resources :projects do 
    collection do
      get 'count'
    end
    member do
      get :epics, :stories, :position
    end
  end

  resources :briefs do
    collection do
      get 'count'
    end
    member do
      get :features
    end
  end

  resources :epics do
    member do 
      get :stories
    end
  end

  resources :stories do
    member do
      get :givens, :occurs, :actions 
    end
  end
  
  resources :features
  resources :positions
  resources :sectors
  resources :givens
  resources :given_continuations
  resources :actions 
  resources :action_continuations
  resources :occurs
  resources :occur_continuations
  
end
