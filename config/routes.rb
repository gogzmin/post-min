Rails.application.routes.draw do
  resources :pins
  resources :products do
  	collection do
  	  get :autocomplete
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
  resources :posts

  get '/posts/new' => 'post#new'
  get '/posts/:id' => 'posts#show'
end
