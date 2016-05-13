Rails.application.routes.draw do

  resources :movies do
    resources :reviews, execpt: [:show, :index]
  end

  devise_for :users

  root 'movies#index'

end
