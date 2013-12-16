json.array!(@relationships) do |relationship|
  json.extract! relationship, :team_name, :team_url
  json.url relationship_url(relationship, format: :json)
end
