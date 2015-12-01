json.array!(@clients) do |client|
  json.extract! client, :id, :area_id, :category, :company_name, :contact_name, :position, :email, :phone, :birthdate, :sex, :company_adress
  json.url client_url(client, format: :json)
end
