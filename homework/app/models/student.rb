class Student < ActiveRecord::Base
  belongs_to :location
  has_many :schedules
  has_many :courses, through: :schedule
end
