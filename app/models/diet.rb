class Diet < ActiveRecord::Base
  validates :name, :calories, presence: true
end
