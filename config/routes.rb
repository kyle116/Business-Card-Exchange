Rails.application.routes.draw do


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'

  get    '/users/all'      => 'users#all',        as: :all_users
  get    '/users'          => 'users#index',      as: :users
  post   '/users'          => 'users#create'
  get    '/users/new'      => 'users#new',        as: :new_user
  get    '/users/:id/edit' => 'users#edit',       as: :edit_user
  get    '/users/:id'      => 'users#show',       as: :user
  patch  '/users/:id'      => 'users#update'
  delete '/users/:id'      => 'users#destroy'

  get    '/login'          => 'sessions#new',     as: :login
  post   '/login'          => 'sessions#create'
  delete '/logout'         => 'sessions#destroy', as: :logout

  get    '/bc/create/:id'  => 'business_cards#create'
  post   '/bc/create/:id'  => 'business_cards#create',  as: :bc_create
  delete '/bc/delete/:id'  => 'business_cards#destroy', as: :bc_delete

  post   '/notes/:id/note' => 'notes#create',     as: :new_note
  get    '/notes/:id/note' => 'notes#edit',       as: :edit_note
  patch  '/notes/:id/note' => 'notes#update'
  delete '/notes/:id/note/:note_id' => 'notes#destroy',    as: :delete_note

end
