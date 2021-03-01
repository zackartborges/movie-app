Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actors_all" => "actors#individual_actor"
    get "/individual_movie_path" => "movies#individual_movie"
    get "/all_movies_path" => "movies#all_movie"
  end
end
