Ritly::Application.routes.draw do
  root "home#index"

  resources :urls, only: [:new, :create, :show, :index]

  get '/:code', to: 'urls#redirector', as: :redirect
  get '/:code/preview', to: 'urls#preview'
end
