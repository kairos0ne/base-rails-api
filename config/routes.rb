Rails.application.routes.draw do
	 
  resources :actions
  resources :occurs
  resources :sectors
  post 'authenticate', to: 'authentication#authenticate'
  resources :clients do
  	resources :projects do
  		resources :briefs
  		resources :features do
  			resources :epics do
  				resources :stories do
              resources :given
          end
  			end
  		end
  	end
  end  
end
