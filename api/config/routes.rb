Rails.application.routes.draw do
  resources :modulo_grades, only: %i[index show]
  get 'password_resets/new'
  get 'password_resets/edit'
  # sessions routes
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :change_passwords, only: %i[update]

  resources :password_resets, only: %i[create update]
  resources :modulos do
    resources :lessons do
    end
  end
  resources :solutions, only: [:show, :update, :index]

  resources :sublessons do
    resources :solutions, only: [:create]
  end

end
