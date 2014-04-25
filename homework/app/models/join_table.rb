class JoinTable < ActiveRecord::Base
  belongs_to :course
  belongs_to :location
end
