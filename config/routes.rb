Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :appointments
  # get "/appointments/new", to: "appointments#new", as: :new_appointment
  # get "/appointments/:id", to: "appointments#show", as: :appointment
  # patch "/appointments/:id", to: "appointments#update"
  # delete "/appointments/:id", to: "appointments#destroy"
  # get "/appointments/:id/edit", to: "appointments#edit", as: :edit_appointment
  # post "/appointments", to: "appointments#create", as: :appointments

  # Defines the root path route ("/")
  root "appointments#index"
end
