Rails.application.routes.draw do

  root 'reports#new'

  get 'reports/remote_lookup', to: 'reports#remote_lookup'

  resources :reports, only: [:index] do
  	get 'tmc_query', to: 'reports#tmc_query', on: :collection
  	get 'tmc_lookup', to: 'reports#tmc_lookup', on: :collection
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
