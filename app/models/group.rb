class Group < ActiveRecord::Base
  validates :time, :day, presence: true
end
