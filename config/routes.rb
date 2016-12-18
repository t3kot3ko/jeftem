Rails.application.routes.draw do
  resources :test_results
  resources :test_result_types
  resources :executions
  resources :executors

  resources :projects do 
		resources :sections do 
  		resources :test_cases, shallow: true
		end
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
