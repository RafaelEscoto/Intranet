json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :Company_name, :contact_name, :phone_a, :phone_b, :email, :description, :webpage
  json.url supplier_url(supplier, format: :json)
end
