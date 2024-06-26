Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :groups do
        post 'add_members', on: :member
        post 'remove_members', on: :member
        resources :expenses, only: %i[index create]
      end
    end
  end
end
