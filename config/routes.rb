Rails.application.routes.draw do
  resources :users do
  	resources :messages	
  end
  

  root 'users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
