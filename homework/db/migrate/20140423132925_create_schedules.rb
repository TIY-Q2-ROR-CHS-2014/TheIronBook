class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer "courses_id"
      t.integer "student_id"

      t.timestamps
    end
    add index :courses_students, ["courses_id", "student_id"]
  end
end
