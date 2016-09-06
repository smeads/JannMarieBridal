Rails.application.routes.draw do

  devise_for :users
  resources :user_profiles

  get 'home/index'
  get 'about' => 'home#about'
  get 'contact' => 'home#contact'
  root 'home#index'
end
