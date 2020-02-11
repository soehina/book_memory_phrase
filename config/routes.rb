Rails.application.routes.draw do
  get '/'=>'home#index'
  get 'home/show' => 'home#show'
  get 'home/:id/user_show' => 'home#user_show'
  # post 'favorites/add_score/:id', to: 'favorites#add_score'

  get 'home/new' => 'home#new'
  post 'home/create' => 'home#create'

  get 'home/:id/edit' => 'home#edit'
  post 'home/:id/update' => 'home#update'

  post 'home/:id/destroy' => 'home#destroy'

  constraints -> request { request.session[:user_id].present? }do
    root to: 'home#show'
  end

  root to: 'home#index'

  devise_scope :user do
    root "users/sessions#new"
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :home
  devise_for :users, :controllers => {
    sessions: 'users/sessions'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
