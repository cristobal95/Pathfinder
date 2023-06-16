Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  post '/postulations/change_status_to_approved', to: 'postulations#change_status_to_approved'

  post '/postulations/change_status_to_rejected', to: 'postulations#change_status_to_rejected'

  resources :internships, except: :destroy do
    resources :postulations, only: %i[new create]
    resources :reviews, only: %i[new create]
  end

  resources :postulations, only: %i[index show edit update destroy]

  resources :reviews, only: %i[edit update destroy]

  resources :users, only: %i[show index]

end
