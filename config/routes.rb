Rails.application.routes.draw do
  get 'users/new'

  root 'pages#home'
  get 'about' => 'pages#about'
  post 'about' => 'pages#about'
  get 'work' => 'pages#work'
  get 'contact' => 'pages#contact'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :users
end
