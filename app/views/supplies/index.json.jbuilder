json.array!(@supplies) do |supply|
  json.extract! supply, :id, :name, :description, :stock
  json.url supply_url(supply, format: :json)
end
