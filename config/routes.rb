Rails.application.routes.draw do
 # resources :posts, :except => :show
 # resources :posts, :except => :show  do
 # #resources :posts do
 #   collection do
 #     get ':loc/:year/:id', to: 'posts#show'
 #   end
 # end
 # #get '*id', to: 'posts#show', as: :my
  
  # Custom show route
  get '/posts/:loc/:year/:id', to: 'posts#show'
  
  # NOTE The definitions below create exactly the same routes as "resources :posts, :except => :show"
  get '/posts', to: 'posts#index'
  post '/posts', to: 'posts#create'
  get '/posts/new', to: 'posts#new', as: :new_post
  get '/posts/:id/edit', to: 'posts#edit', as: :edit_post
  #get '/posts/:id', to: 'posts#show', as: :post
  patch '/posts/:id', to: 'posts#update', as: :post
  put '/posts/:id', to: 'posts#update'
  delete '/posts/:id', to: 'posts#destroy'
end
