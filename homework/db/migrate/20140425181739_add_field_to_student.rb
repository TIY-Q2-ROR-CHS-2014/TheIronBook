class AddFieldToStudent < ActiveRecord::Migration
  def change
    add_column :students, :course_id, :integer
    add_column :students, :location_id, :integer
  end
end
