Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/bookmarks" => "bookmarks#index"
    post "/bookmarks" => "bookmarks#create"
    get "/bookmarks/:id" => "bookmarks#show"
    patch "/bookmarks/:id" => "bookmarks#update"
    delete "/bookmarks/:id" => "bookmarks#destroy"

    get "/categories" => "categories#index"
    post "/categories" => "categories#create"
    get "/categories/:id" => "categories#show"
    patch "/categories/:id" => "categories#update"
    delete "/categories/:id" => "categories#destroy"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

  end
end
