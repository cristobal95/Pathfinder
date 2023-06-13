Rails.application.routes.draw do
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "pages#home"

  # internships: index, show, new, create, edit, update (no destroy)

  # postulations: index, show, new, create, destroy, edit, update

  # users show

  # reviews new, create, edit, update, destroy

  resources :internships, except: :destroy do
    resources :postulations, only: %i[index show new create]
    resources :reviews, only: %i[new create]
  end

  resources :postulations, only: %i[edit update destroy]

  resources :reviews, only: %i[edit update destroy]

  resources :users, only: %i[show index]

# /interships	GET	Internships	Index
# /internships/:id	GET	Internships	Show
# /interships/:id/postulations/new	GET/POST	postulations	New/create
# /postulations	GET	postulations	index
# /postulations/:id	GET	postulations	show
# /postulations	DELETE	postulations	destroy
# /users/:id (role: true)	GET	users	show
# /interships/:id/reviews/new	GET/POST	reviews	new/create
# /interships/:id/reviews/:id/edit	GET/PATCH	reviews	edit/update
# /interships/:id/reviews/	DELETE	reviews	destroy

# /interships/new	GET/ POST	interships	new/create
# /internships (filtrar vista con current_user)	GET	Internships	Index
# interships/:id/postulations/:id	GET	postulations	show / edit / update
# /users/:id (role: false)	GET	users	show
# /interships/:id/edit	GET/ PATCH	interships	edit/update
# users/:id	GET	users	index
end
