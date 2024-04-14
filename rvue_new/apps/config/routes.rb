Rails.application.routes.draw do
  resources :occupations   do
    collection do
      get :of_tday
    end
  end
  resources :regulations
  resources :calenders
  resources :rooms

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  devise_for :admins, controllers: {
    registrations: 'admins/registrations',
    sessions: 'admins/sessions'
  }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "rooms#index"

end
