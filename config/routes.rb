Rails.application.routes.draw do
  root to: "items#index"

  resources :items, only: %i[index create update destroy]
end
