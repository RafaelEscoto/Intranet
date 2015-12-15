json.array!(@site_users) do |site_user|
  json.extract! site_user, :id, :name, :email, :password_digest
  json.url site_user_url(site_user, format: :json)
end
