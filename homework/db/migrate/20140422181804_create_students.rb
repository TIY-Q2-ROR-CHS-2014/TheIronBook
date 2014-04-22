class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.attachment :avatar
      t.text :bio
      t.string :social_1
      t.string :social_2
      t.string :social_3

      t.timestamps
    end
  end
end