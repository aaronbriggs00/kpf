Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    resources :actors, :groups, :events, :locations  do
    end
    #event_actor association
    post "/event_actors" => "event_actors#create"
    delete "/event_actors" => "event_actors#destroy"
    #actor_location association
    post "/actor_locations" => "actor_locations#create"
    delete "/actor_locations" => "actor_locations#destroy"
    #images
    post "/images" => "images#create"
    delete "/images/:id" => "images#destroy"
  end
end
