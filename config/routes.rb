Rails.application.routes.draw do
  # resources :comments
  # get '/patients/:id', to: 'patients#show'
  get '/comments', to: 'comments#index'
  post '/comments', to: 'comments#create'
end
