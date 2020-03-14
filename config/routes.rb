Rails.application.routes.draw do
  get 'home/index' => 'home#index'
  get 'home/:id/user_show' => 'home#user_show'
  get 'home/new' => 'home#new'
  post 'home/create' => 'home#create'
  get 'home/:id/edit' => 'home#edit'
  post 'home/:id/update' => 'home#update'
  post 'home/:id/destroy' => 'home#destroy'

  resources :posts, shallow: true do
    post 'add' => 'likes#create'
    delete '/add' => 'likes#destroy'
  end

  get 'users/show'

  devise_scope :user do
    get '/users/sign_in' => 'users/sessions#new'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  devise_for :users, :controllers => {
      sessions: 'users/sessions'
  }

  as :user do
    get 'home/index',:to => 'devise/registrations#edit',:as => :user_root
  end

  root to: 'home#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
