class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  
  validates :name, presence: true
  validates :date, presence: true
  validates :location, presence: true
  validates :description, presence: true, length: { minimum: 1 }
end
