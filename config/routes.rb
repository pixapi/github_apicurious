Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/dashboard', to: 'dashboard#show'
  get '/auth/github/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/starred', to: 'starred#index'
  get '/followers', to: 'followers#index'
  get '/following', to: 'following#index'
  get '/recent_commits', to: 'commits#index'
  get '/followers_activity', to: 'followers_activity#index'
  get '/repos', to: 'repos#index'

  root 'home#show'
end
