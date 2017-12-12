Rails.application.routes.draw do
  resources :teams, shallow: true do
    resources :members
  end
end
