Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/records/:id", to: "records#show", as: "record"
  get "/records", to: "records#index", as: "records"

end
