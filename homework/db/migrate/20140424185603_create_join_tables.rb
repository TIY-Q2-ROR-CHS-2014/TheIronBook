class CreateJoinTables < ActiveRecord::Migration
  def change
    create_table :join_tables do |t|
      t.integer :course_id
      t.integer :location_id
      t.timestamps
    end
  end
end
