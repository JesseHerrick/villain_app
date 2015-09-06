Rails.application.routes.draw do
  namespace :v1 do
    resources :villain do
      resources :henchman
      resources :sighting
    end
  end
end
