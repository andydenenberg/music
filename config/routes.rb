Rails.application.routes.draw do
  resources :songs do
    collection do
      get 'sorted'
    end
  end

  root to: 'visitors#index'
  get 'cattlechuck' => 'visitors#cattlechuck'
  get 'schedule' => 'visitors#schedule'
  devise_for :users
  resources :users
end
