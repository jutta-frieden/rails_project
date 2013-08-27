json.array!(@circuits) do |circuit|
  json.extract! circuit, :name
  json.url circuit_url(circuit, format: :json)
end
