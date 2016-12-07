Rails.application.routes.draw do
  
  post 'authenticate', to: 'authentication#authenticate'
  resources :clients do
  	resources :projects do
  		resources :briefs
  		resources :features do
  			resources :epics do
  				resources :stories do
              resources :given do
                resources :continuations
              end
              resources :actions do
                resources :continuations
              end
              resources :occurs do
                resources :continuations
              end
          end
  			end
  		end
  	end
  end  
end
