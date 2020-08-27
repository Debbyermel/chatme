Rails.application.routes.draw do
  root 'pages#home'
  get 'contact', to: 'pages#contact'
  get 'login', to: 'sessions#new'
  get 'message', to: 'chatroom#index'
end