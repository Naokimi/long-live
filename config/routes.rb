Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :characters, only: [:index, :show]

  # get "xxxs/:id", to: "pages#home"
  # namespace :api, defaults: { format: :json } do
  #  namespace :v1 do
  #    resources :xxxs, only: [ :index, :show, :create  ]
  #  end
  # end
  # # after run rails g controller api/v1/xxxs and watch video from 40:00
end
