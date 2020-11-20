Rails.application.routes.draw do
  get 'covid_faq/new'
  get 'covid_faq/show'
  root 'home#home'
  resources :fitness_classes
  resources :membership_pkgs
  resources :memberships
  resources :members
  get '/home', to: 'home#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
