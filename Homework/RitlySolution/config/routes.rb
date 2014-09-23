Ritly::Application.routes.draw do
  devise_for :users

  root "home#index"

  resources :urls

  get '/:code', to: 'urls#redirector', as: :redirect
  get '/:code/preview', to: 'urls#preview'
end
