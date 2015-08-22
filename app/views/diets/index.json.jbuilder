json.array!(@diets) do |diet|
  json.extract! diet, :id, :name, :calories
  json.url diet_url(diet, format: :json)
end
