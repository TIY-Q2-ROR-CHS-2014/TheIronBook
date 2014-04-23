class Schedules < ActiveRecord::Base
  belongs_to :course
  belongs_to :student

  # has_many :students
  # has_many :courses
end
