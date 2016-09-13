Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Devise
  devise_for :users

  # Private
  authenticate :user do
  end

  # Roots
  root to: "welcomes#index"

  # Reroute bad links to home
  get "*path", to: "welcomes#index"

end
