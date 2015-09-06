Rails.application.routes.draw do
  resources :villain do
    resources :henchman
    resources :sighting
  end
end
