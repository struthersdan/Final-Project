Rails.application.routes.draw do
  get 'sneakers/index'

  get 'sneakers/:id' , to: 'sneakers#show', as:'sneakers'

  resources :sneaker
  #devise_for :sneakers, ActiveAdmin::Devise.config
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
