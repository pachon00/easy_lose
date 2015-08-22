class Group < ActiveRecord::Base
  has_and_belongs_to_many :foods
  validates :time, :day, presence: true
end
