Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :user_profiles

  get 'home/index'
  get 'about' => 'home#about'
  get 'contact' => 'home#contact'
  root 'home#index'
end
