Rails.application.routes.draw do

  root 'pages#home'

  get 'pages/home'
  get 'about', to: 'pages#about'

end
