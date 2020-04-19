Rails.application.routes.draw do
  get 'post/index'
  get 'post/create'
  get 'post/dashboard'
  root 'post#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
