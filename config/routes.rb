Rails.application.routes.draw do
  # devise_for :users
  resources :adventures
  devise_for :users, :controllers => {
    registrations: 'registrations'
  }
  devise_for :views
  get "/", to: "pages#home"
end
