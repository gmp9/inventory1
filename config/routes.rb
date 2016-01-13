Rails.application.routes.draw do
  resources :transactions
  root to: 'transactions#new'
  get 'create', to: 'transactions#create'
end
