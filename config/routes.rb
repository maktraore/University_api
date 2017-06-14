Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    get "/universities", to:'universities#index'
    get "/universities/:id", to:'universities#show'
    post "/universities", to: 'universities#create'
    patch "/universities/:id", to: 'universities#update'
    delete "/universities/:id", to: 'universities#destroy'
    namespace :v2 do
      get "/universities", to:'universities#index'
      get "/universities/:id", to:'universities#show'
      post "/universities", to: 'universities#create'
      patch "/universities/:id", to: 'universities#update'
      delete "/universities/:id", to: 'universities#destroy'
    end
  end
end
