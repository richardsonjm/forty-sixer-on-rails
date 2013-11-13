json.array!(@treks) do |trek|
  json.extract! trek, :name, :url, :diff, :distance, :duration, :desc
  json.url trek_url(trek, format: :json)
end
