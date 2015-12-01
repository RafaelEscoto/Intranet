json.array!(@users) do |user|
  json.extract! user, :id, :name, :birthdate, :age, :phone, :emergency_number, :curp, :imms, :rfc, :employee_id, :date_of_admission, :area_id, :boss, :salary, :role_id
  json.url user_url(user, format: :json)
end
