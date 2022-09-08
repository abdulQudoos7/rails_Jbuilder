Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root "students#index"
  # root "data#index"
  namespace :api, constraints: { format: :json }, default: { format: :json } do
    namespace :v1 do
      resources :students
    end
  end
end
