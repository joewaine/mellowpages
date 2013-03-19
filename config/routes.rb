Mellowpages::Application.routes.draw do
  root :to => 'home#index'
  resources :users, :authors, :genres, :publications, :accounts, :checkouts

  resources :books do
    collection { post :import}
    member do
      post 'checkout'
      post 'return'
    end
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end