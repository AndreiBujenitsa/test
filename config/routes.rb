Rails.application.routes.draw do
  root to: "offers#index"
  resources :offers, except: [:show, :edit]
  
end
