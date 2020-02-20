Rails.application.routes.draw do
  root 'vocabularies#index'
  resources :vocabularies
end
