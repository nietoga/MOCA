Rails.application.routes.draw do
  resources :undergraduates
  resources :subjects
  resources :terms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
