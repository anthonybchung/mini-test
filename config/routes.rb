Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #work experience
  get "/work_experience/", to: "work_experience#index"
  get "/work_experience/new", to: "work_experience#new"
  get "/work_experience/:id", to: "work_experience#show"
  get "/work_experience/:id/edit", to: "work_experience#edit"
end
