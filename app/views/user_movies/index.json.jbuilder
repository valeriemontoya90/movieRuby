json.array!(@user_movies) do |user_movie|
  json.extract! user_movie, :id, :user_id, :movie_id, :view
  json.url user_movie_url(user_movie, format: :json)
end
