json.array!(@distributed_healths) do |distributed_health|
  json.extract! distributed_health, :id, :ph, :chlorine, :ph, :magnified_Link, :taste, :odor, :temperature, :mercury, :hardness, :lat, :long
  json.url distributed_health_url(distributed_health, format: :json)
end
