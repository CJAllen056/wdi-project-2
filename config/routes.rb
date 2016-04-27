Rails.application.routes.draw do
	root "statics#home"
	
	devise_for :users
	resources :users

	resources :groups
	post "/groups/:id/user", to: "groups#add_user_to_group", as: :join_group
	delete "/groups/:id/user", to: "groups#remove_user_from_group", as: :leave_group

	resources :books
	get "/books/:id/groups/edit", to: "books#change_current_book_form"
	post "/books/:id/groups/edit", to: "books#change_current_book"

end
