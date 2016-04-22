Rails.application.routes.draw do
	root "statics#home"
	
	devise_for :users
	resources :users

	resources :groups

	resources :books

end
