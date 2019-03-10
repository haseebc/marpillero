Rails.application.routes.draw do
  devise_for :users

  get 'pages/about', to: 'pages#about'
  get 'pages/contact', to: 'pages#contact'
  # get 'pages/blog', to: 'pages#blog'
  get 'pages/blog', to: 'pages#index'
  get 'pages/projects', to: 'pages#projects'
  get 'pages/ldnsouth', to: 'pages#ldnsouth'
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'blog', to: 'pages#blog'
  get 'projects', to: 'pages#projects'
  get 'ldnsouth', to: 'pages#ldnsouth'

  # get 'blog', to: 'pages#index'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :articles

end
