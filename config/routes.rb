Rails.application.routes.draw do
  resources :students
  resources :pay_others
  resources :pay_fees
  resources :tasks
  resources :classrooms
  mount Ckeditor::Engine => '/ckeditor'
  
  devise_for :libraries
  devise_for :accounts
  devise_for :parents
  devise_for :teachers
  get 'home/index'
  root 'home#index'

 end
