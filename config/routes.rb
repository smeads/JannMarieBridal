Rails.application.routes.draw do
  get 'home/index'

  get 'home/about'

  get 'home/contact'

  root 'home#index'
end
