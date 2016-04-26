Rails.application.routes.draw do
	root "statics#home"
	
	devise_for :users
	resources :users

	resources :groups
	post "/groups/:id/user", to: "groups#add_user_to_group", as: :join_group

	resources :books

end
