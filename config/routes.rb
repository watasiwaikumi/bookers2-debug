Rails.application.routes.draw do
  get 'searches/search'
  devise_for :users
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
  
  get '/search', to: 'searches#search'
end