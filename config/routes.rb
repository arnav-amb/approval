Rails.application.routes.draw do
  get 'student/new' => 'student#new'
  post 'student/create' => 'student#create'
  get 'home/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'
  post 'register' => 'register#make', as: 'register'
end
