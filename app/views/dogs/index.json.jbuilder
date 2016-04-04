json.array!(@dogs) do |dog|
  json.extract! dog, :id, :name, :age, :user_id
  json.url dog_url(dog, format: :json)
end
