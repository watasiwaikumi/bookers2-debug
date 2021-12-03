Rails.application.routes.draw do
  get 'chats/show'
  get 'searches/search'
  get 'relationships/create'
  get 'relationships/destroy'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users do
      resource :relationships, only: [:create, :destroy]
      	get 'followings' => 'relationships#followings', as: 'followings'
      	get 'followers' => 'relationships#followers', as: 'followers'
end
  resources :books do
   resource :favorites
   resources :book_comments
  end
  resources :chats, only: [:show, :create]
  get '/search', to: 'searches#search'
end