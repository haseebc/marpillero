Rails.application.routes.draw do
  devise_for :users

  get 'pages/about', to: 'pages#about'
  get 'pages/contact', to: 'pages#contact'
  get 'pages/blog', to: 'pages#blog'
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'blog', to: 'pages#blog'


  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
