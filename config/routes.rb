Rails.application.routes.draw do


  
  devise_for :users

  get 'workers/select_items' 

  post 'workers/select_items' 

  get 'sdos/index'

  get 'sdos/edit'

  get 'sdos/destroy'

  get 'sdos/create'

  get 'sdos/update'

  get 'sdos/show'

  get 'index/edit'

  get 'index/destroy'

  get 'index/create'

  get 'index/update'

  get 'index/show'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  get 'users/delete'

  get 'user/index'

  get 'user/show'

  get 'user/new'

  get 'user/edit'

  get 'user/delete'


  # match ':controller(/:action(:id))', :via => :get

  resources :complaints
  resources :users
  resources :workers
  resources :sdos

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
