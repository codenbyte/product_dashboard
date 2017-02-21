Rails.application.routes.draw do
  get '/' => 'products#index'

  get 'new' => 'products#new'

  post 'create' => 'products#create'

  get 'products/:id/edit' => 'products#edit'

  get 'products/:id' => 'products#show'

  post 'products/:id' => 'products#create_comment'

  get '/comments' => 'products#show_comments'

  post 'update' => 'products#update'

  get 'products/:id/delete' => 'products#delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
