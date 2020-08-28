Rails.application.routes.draw do
  root 'pages#home'
  get 'contact', to: 'pages#contact'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'message', to: 'chatroom#index'
end