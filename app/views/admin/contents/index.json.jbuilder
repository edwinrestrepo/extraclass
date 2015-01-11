json.array!(@contents) do |content|
  json.extract! content, :id, :title, :content, :status
  json.url content_url(content, format: :json)
end
