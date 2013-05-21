DemoApp2::Application.routes.draw do
  get "pages/home"
  get "pages/contact"
  get "pages/about"
  get "users/new"
  
  match '/home', :to => 'pages#home'
  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  match '/signup',  :to => 'users#new'
  
  root :to => 'home#home'

  resources :microposts
  resources :users

end
