class Course < ActiveRecord::Base
  belongs_to :location
  has_many :students

  # NAME = ["Rails Engineering", "Front End Engineering", "iOS Engineering"]

  # NOTE: Looking at how the CONSTANTS were added to the models, we would not need tables in the database for locations and courses. However, but doing it this way would not be good practice as an admin would not have access to add new locations and courses from an admin page.  So I will remove those CONSTANTS as we will add the list to the database via a form.
  #   When I added those to an array format, it was just my way of taking notes.

end
