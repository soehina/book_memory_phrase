Rails.application.routes.draw do
  get '/'=>'home#index'
  get 'home/show' => 'home#show'

  get 'home/new' => 'home#new'
  post 'home/create' => 'home#create'

  devise_scope :user do
    root "users/sessions#new"
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  devise_for :users, :controllers => {
    sessions: 'users/sessions'
  }

  # root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
