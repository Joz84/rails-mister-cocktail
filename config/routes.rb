Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: [:show, :new, :create, :destroy] do
    resources :doses, only: [:create, :destroy], shallow: true
  end
end
