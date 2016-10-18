Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/records/new" => "records#new", as: 'new_record'
  get "/records/:id", to: "records#show", as: "record"
  get "/records", to: "records#index", as: "records"
  delete "/records/:id", to: "records#destroy"
  get "/records/:id/edit", to: "records#edit", as: "edit_record"
  patch "/records/:id", to: "records#update"

# resources : records, only: [:index, :new, :create, :show, :destroy]
# resources :records

end
