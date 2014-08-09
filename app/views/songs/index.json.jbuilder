json.array!(@songs) do |song|
  json.extract! song, :id, :artist, :name, :user, :youtube_id, :filename, :played, :rating, :comments
  json.url song_url(song, format: :json)
end
