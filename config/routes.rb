Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

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
