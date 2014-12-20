json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :description
  json.url movie_url(movie, format: :json)
end