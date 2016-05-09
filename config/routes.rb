Rails.application.routes.draw do
  root 'pages#home'
  get 'users/new'
  get '/about' => 'pages#about'
  put '/about/content_block/:id' => 'content_blocks#update'
  get '/work' => 'pages#work'
  put '/work/content_block/:id' => 'content_blocks#update'
  get 'contact' => 'pages#contact'
  post '/contact' => 'pages#send_email'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :users
  resources :content_blocks
  resources :posts
end
