json.array!(@contents) do |content|
  json.extract! content, :bannerDescription, :teachingAims, :faculty, :courseDescriptionAndPrice, :relationships
  json.url content_url(content, format: :json)
end
