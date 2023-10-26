Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/indy500", to: "raffles#index"
  get "/car_drivers", to: "car_drivers#index"
  post "/car_drivers", to: "car_drivers#create"
  delete "/car_drivers", to: "car_drivers#delete"
  get "/participants", to: "participants#index"
  post "/participants", to: "participants#create"
  delete "/participants", to: "participants#delete"
  get "/indy500", to: "raffle#index"
  get "/raffle", to: "raffle#show"

end
