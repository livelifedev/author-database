Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/authors", to: "authors#index", as: "index"
  get "/authors/new", to: "authors#new", as: "new_author"
  post "/authors", to: "authors#create"
  get "/authors/:id", to: "authors#show", as: "author"
  get "/authors/:id/edit", to: "authors#edit", as: "author_edit"
  patch "/authors/:id", to: "authors#update"
  put "/authors/:id", to: "authors#update"
  delete "/authors/:id", to: "authors#destroy"
end
