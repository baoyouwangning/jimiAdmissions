class CreateCourseDescriptionAndPrices < ActiveRecord::Migration
  def change
    create_table :course_description_and_prices do |t|
      t.string :course_name
      t.string :course_hour
      t.string :course_price
      t.string :course_teacher

      t.timestamps
    end
  end
end
