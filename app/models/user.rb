class User < ActiveRecord::Base
  validates :name, :age, :weight, :height, presence: true
end
