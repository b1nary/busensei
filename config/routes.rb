Rails.application.routes.draw do
  devise_for :users

  authenticate :user do
    resources :videos, except: [:index, :show]
    resources :comics, except: [:index, :show]
    resources :kanjis, except: [:index, :show]
  end

  resources :videos, only: [:index, :show]
  resources :comics, only: [:index, :show]
  resources :kanjis, only: [:index, :show]

  root to: 'welcomes#index'
  get '/contact', to: 'welcomes#contact'
  get '*path', to: 'welcomes#index'
end
