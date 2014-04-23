class Course < ActiveRecord::Base
  belongs_to :location

  has_many :schedules
  has_many :students, through: :schedules

  NAME = [
    'Rails Engineering',
    'Front End Engineering',
    'iOS Engineering'
  ]
end
