Rails.application.routes.draw do

	post 'authenticate', to: 'authentication#authenticate'
	
	constraints subdomain: 'api' do
 	 	scope module: 'api' do
	    	namespace :v1 do
	      		resources :users
	        	resources :briefs
	  			resources :types
	  			resources :projects
	  			resources :clients
	    	end
  		end
	end	

  
end
