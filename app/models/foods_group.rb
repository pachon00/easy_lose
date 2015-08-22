class FoodsGroup < ActiveRecord::Base
  
  validates :group_id, :food_id, presence: true
end
