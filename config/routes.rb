Rails.application.routes.draw do
	
  post 'authenticate', to: 'authentication#authenticate'
  resources :clients do
  	resources :projects do
  		resources :briefs
  		resources :features do
  			resources :epics do
  				resources :stories do
  					resources :givens
  				end
  			end
  		end
  	end
  end  
end
