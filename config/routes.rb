Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  resources :breeds
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'breeds#index'
end
