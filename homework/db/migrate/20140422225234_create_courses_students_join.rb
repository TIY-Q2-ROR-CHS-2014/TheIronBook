class CreateCoursesStudentsJoin < ActiveRecord::Migration
  def change
    create_table :courses_students, :id => false do |t|
      t.integer "courses_id"
      t.integer "student_id"
    end
    add index :courses_students, ["courses_id", "student_id"]
  end
end
