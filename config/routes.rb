Mellowpages::Application.routes.draw do
  root :to => 'home#index'
  resources :users, :authors, :genres, :publications

  resources :books do
    member do
      post 'checkout'
    end
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end