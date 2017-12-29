Rails.application.routes.draw do
  resources :teams
  resources :projects do
    resources :project_assignments, shallow: true
  end
  resources :members do
    resources :team_assignments, shallow: true
  end
  resources :team_assignments, only: %i[index create]

  get '/team_status', to: 'team_status#index'
end
