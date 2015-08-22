json.array!(@foods) do |food|
  json.extract! food, :id, :name, :description, :unit, :cuantity, :calories
  json.url food_url(food, format: :json)
end
