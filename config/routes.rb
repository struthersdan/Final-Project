Rails.application.routes.draw do
  get 'pages/about' , as: :about

  get 'pages/contact' , as: :contact

  get 'sneakers/index'

  get 'sneakers/:id' , to: 'sneakers#show', as:'sneakers'

  root 'sneakers#index',  as: :home

  resources :sneaker
  #devise_for :sneakers, ActiveAdmin::Devise.config
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
