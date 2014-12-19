json.array!(@users) do |user|
  json.extract! user, :id, :login, :password, :timestamp
  json.url user_url(user, format: :json)
end
