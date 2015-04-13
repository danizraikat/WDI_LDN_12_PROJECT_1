json.array!(@users) do |user|
  json.extract! user, :id, :role, :first_name, :second_name, :email, :password, :password_confirmation, :gender, :tel_number
  json.url user_url(user, format: :json)
end
