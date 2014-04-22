class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :city_state

      t.timestamps
    end
  end
end
