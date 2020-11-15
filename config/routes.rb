Rails.application.routes.draw do
  root 'home#home'
  resources :fitness_classes
  resources :membership_pkgs
  resources :memberships
  resources :members
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
