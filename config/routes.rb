Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    resource :user, only: [:create, :show]
    resource :session, only: [:create, :destroy]
    resources :stories, only: [:index, :create, :show, :update, :destroy ]
    resources :comments, only: [:index, :create, :show, :update, :destroy ]
  end
  
  root "static_pages#root"
end
