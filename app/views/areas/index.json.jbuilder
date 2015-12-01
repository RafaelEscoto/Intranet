json.array!(@areas) do |area|
  json.extract! area, :id, :area_name, :area_manager
  json.url area_url(area, format: :json)
end
