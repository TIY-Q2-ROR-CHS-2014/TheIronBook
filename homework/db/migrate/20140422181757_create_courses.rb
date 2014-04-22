class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :city_name
      t.integer :student_id, index: true
      t.integer :location_id, index: true

      t.timestamps
    end
  end
end
