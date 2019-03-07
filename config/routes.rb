Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/speakers' => 'speakers#index'
    get '/speaker/:id' =>'speakers#show'
  end
end
