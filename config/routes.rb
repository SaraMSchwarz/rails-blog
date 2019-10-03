Rails.application.routes.draw do
  #posts index is the root
  root 'posts#index'
  #route to pages controller -> about view
  get 'about' => 'pages#about'

  resources :posts
end
