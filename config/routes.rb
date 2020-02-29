Rails.application.routes.draw do
  get '/' => 'home#top'
  get 'home/index' => 'home#index'
  get 'home/:id/user_show' => 'home#user_show'
  get 'home/new' => 'home#new'
  post 'home/create' => 'home#create'
  get 'home/:id/edit' => 'home#edit'
  post 'home/:id/update' => 'home#update'
  post 'home/:id/destroy' => 'home#destroy'

  get 'users/show'

  devise_scope :user do
    get '/useers/sign_in' => 'users/sessions#new'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  devise_for :users, :controllers => {
      sessions: 'users/sessions'
  }

  as :user do
    get 'home/index',:to => 'devise/registrations#edit',:as => :user_root
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
