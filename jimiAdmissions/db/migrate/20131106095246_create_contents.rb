class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.text :header
      t.text :teachingAims
      t.text :faculty
      t.text :courseDescriptionAndPrice
      t.text :relationships

      t.timestamps
    end
  end
end
