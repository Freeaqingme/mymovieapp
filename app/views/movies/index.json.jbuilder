json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :release, :director, :synopsis
  json.url movie_url(movie, format: :json)
end
