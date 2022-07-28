class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :event_attendings, foreign_key: :attended_event_id
  has_many :attendees, through: :event_attendings
  
  validates :name, presence: true
  validates :date, presence: true
  validates :location, presence: true
  validates :description, presence: true, length: { minimum: 1 }
end
