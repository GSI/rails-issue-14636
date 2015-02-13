json.array!(@posts) do |post|
  json.extract! post, :id, :title, :location, :d8
  json.url post_url(post, format: :json)
end
