Rails.application.routes.draw do
  resources :songs

  root to: 'visitors#index'
  get 'cattlechuck' => 'visitors#cattlechuck'
  devise_for :users
  resources :users
end
