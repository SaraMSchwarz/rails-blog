Rails.application.routes.draw do
  #posts index is the root
  root 'posts#index', as: 'home'
  #route to pages controller -> about view
  get 'about' => 'pages#about', as: 'about'

  resources :posts
end
