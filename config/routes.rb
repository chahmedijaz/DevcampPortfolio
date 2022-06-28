Rails.application.routes.draw do
  resources :portfolios
  resources :blogs

  get 'home', to: 'pages#home'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root to: 'pages#home'
end
