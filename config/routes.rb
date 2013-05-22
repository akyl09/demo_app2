DemoApp2::Application.routes.draw do
  
  match '/home', :to => 'pages#home'
  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  
  
  root :to => 'pages#home'

  resources :microposts
  resources :users
  match '/signup',  :to => 'users#new'

end
