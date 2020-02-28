Rails.application.routes.draw do
  get 'users/show'
  get 'home/top'=>'home#top'
  get 'home/show' => 'home#show'
  get 'home/:id/user_show' => 'home#user_show'
  get 'home/new' => 'home#new'
  post 'home/create' => 'home#create'
  get 'home/:id/edit' => 'home#edit'
  post 'home/:id/update' => 'home#update'
  post 'home/:id/destroy' => 'home#destroy'

  get '/useers/sign_in' => 'users/sessions#new'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  devise_for :users, :controllers => {
      sessions: 'users/sessions'
  }

  as :user do
    get 'home/show',:to => 'devise/registrations#edit',:as => :user_root
  end

  constraints ->  request { request.session[:user_id].present? } do
    # ログインしてる時のパス
    root to: "home#show"
  end
  # ログインしてない時のパス
  root to: 'home#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
