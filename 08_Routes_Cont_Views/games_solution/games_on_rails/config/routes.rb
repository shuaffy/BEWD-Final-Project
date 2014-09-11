GamesOnRails::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'games#index'

  resources :secret_numbers, :only => [:new, :show]
  resources :rock_paper_scissors, :only => [:new, :show]

end
