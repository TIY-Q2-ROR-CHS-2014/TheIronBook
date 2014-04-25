class Location < ActiveRecord::Base
  has_many :students
  has_many :join_tables
  has_many :courses, through: :join_tables

end  
