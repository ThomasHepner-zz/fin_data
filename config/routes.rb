Rails.application.routes.draw do

  root 'reports#new'

  get 'reports/remote_lookup', to: 'reports#remote_lookup'

  resources :reports, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
