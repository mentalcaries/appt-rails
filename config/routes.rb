Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/appointments/new", to: "appointments#new", as: :new_appointment
  get "/appointments/:id", to: "appointments#show", as: :appointment
  post "/appointments", to: "appointments#create", as: :appointments

  # Defines the root path route ("/")
  root "appointments#index"
end
