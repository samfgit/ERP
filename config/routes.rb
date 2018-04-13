Rails.application.routes.draw do
  resources :documents
  resources :departments
  root to: 'visitors#index'

  resources :departments do
    member do
      get :get_new_doc_code, :as => 'get_new_doc_code'
    end
  end
  
  devise_scope :user do
    get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
    get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end
  
  devise_for :users, :skip => [:registrations] 
	  as :user do
	  get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
	  put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end

  resources :users
end