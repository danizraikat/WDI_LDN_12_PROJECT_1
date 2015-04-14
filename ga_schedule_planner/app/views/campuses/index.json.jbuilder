json.array!(@campuses) do |campus|
  json.extract! campus, :id, :name, :address
  json.url campus_url(campus, format: :json)
end
