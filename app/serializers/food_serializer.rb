class FoodSerializer < ActiveModel::Serializer
    #has_and_belongs_to_many :group_foods
    attributes :id, :name, :description, :unit, :cuantity, :calories
end
