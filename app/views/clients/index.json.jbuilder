json.array!(@clients) do |client|
  json.extract! client, :id, :identification, :name, :direction, :phone, :email, :birthdate
  json.url client_url(client, format: :json)
end
