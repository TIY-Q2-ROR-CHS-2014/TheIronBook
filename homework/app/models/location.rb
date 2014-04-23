class Location < ActiveRecord::Base
  CITY_STATES =  [
    'Asheville, NC',
    'Atlanta, GA',
    'Austin, TX',
    'Charleston, SC',
    'Durham, NC',
    'Greenville, SC',
    'Houston, TX',
    'Spartanburg, SC',
    'Tampa, FL'
  ]

  has_many :students
  has_many :courses
end
