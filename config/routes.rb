Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :users, only: [:new, :create, :show]
  resource :sessions, only: [:create]
end
