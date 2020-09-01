Rails.application.routes.draw do
  root 'pages#home'
  get 'contact', to: 'pages#contact'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'signup', to: "registrations#new"
  post 'signup', to: "registrations#create"
  post 'message', to: 'messages#create'
  get 'message', to: 'chatroom#index'

  mount ActionCable.server, at: '/cable'
end