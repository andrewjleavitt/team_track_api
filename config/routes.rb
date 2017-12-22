Rails.application.routes.draw do
  resources :teams
  resources :projects, only: %i[index create]
  resources :members do
    resources :team_assignments, shallow: true
  end
  resources :team_assignments, only: %i[index create]
end
