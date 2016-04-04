json.array!(@toys) do |toy|
  json.extract! toy, :id, :name, :dog_id
  json.url toy_url(toy, format: :json)
end
