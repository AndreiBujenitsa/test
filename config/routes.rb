Rails.application.routes.draw do
  resources :offers, except: [:show, :edit]
  
end
