Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'

<<<<<<< HEAD
  
=======
  # get 'products/:id' => 'products#show'
>>>>>>> 831e614603bedf7053caf0f452f6aaad53eef1ef
  resources :products
end
