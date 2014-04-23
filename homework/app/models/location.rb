class Location < ActiveRecord::Base
  has_many :students
  has_many :courses

  CITY_STATE =  [
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
end
