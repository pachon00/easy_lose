class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :weight, :height
end
