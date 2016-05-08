Rails.application.routes.draw do
  root 'pages#home'
  get 'users/new'
  get '/about' => 'pages#about'
  put '/about' => 'pages#update'
  put '/about/edit' => 'pages#edit'
  get '/work' => 'pages#work'
  put '/work' => 'pages#update'
  put '/work/edit' => 'pages#edit'
  get 'contact' => 'pages#contact'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :users
  resources :content_blocks
  resources :posts
end
