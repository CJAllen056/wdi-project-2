Rails.application.routes.draw do
  devise_for :users
  get 'user/index'

  get 'user/show'

  get 'user/edit'

  get 'user/update'

  root "statics#home"
end
