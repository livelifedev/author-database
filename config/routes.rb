Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/authors", to: "authors#index", as: "authors"
  get "/authors/new", to: "authors#new", as: "new_author"
  post "/authors", to: "authors#create"
  get "/authors/:id", to: "authors#show", as: "author"
  get "/authors/:id/edit", to: "authors#edit", as: "author_edit"
  patch "/authors/:id", to: "authors#update"
  put "/authors/:id", to: "authors#update"
  delete "/authors/:id", to: "authors#destroy"

  get "/books", to: "books#index", as: "books"
  get "/authors/:id/book/new", to: "books#new", as: "new_book"
  # resources :books
end
