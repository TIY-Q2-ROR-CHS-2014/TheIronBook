class Course < ActiveRecord::Base
  
  has_many :students
  has_many :join_tables
  has_many :locations, through: :join_tables

end
