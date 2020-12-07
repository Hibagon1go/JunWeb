Rails.application.routes.draw do
  get '/' => "home#top"
  get '/posts/owner' => "posts#owner"
  get '/posts/post_create' => "posts#post_create"
  get '/posts/post_gellery' => "posts#post_gellery"
  post '/posts/post_create' => "posts#create"
  get '/posts/post_list' => "posts#post_list"
  get '/posts/gellery' => "posts#gellery"
  get '/posts/:id' => "posts#show"
  get '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete '/posts/:id' => 'posts#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
