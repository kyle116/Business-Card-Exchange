Rails.application.routes.draw do
  get 'sessions/create'

  get 'sessions/destroy'

  get 'sessions/new'

  get 'users/create'

  get 'users/destroy'

  get 'users/edit'

  get 'users/index'

  get 'users/new'

  get 'users/show'

  get 'users/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
