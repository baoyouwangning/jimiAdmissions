class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :student_name
      t.string :obtain_courses
      t.string :contact_information

      t.timestamps
    end
  end
end
