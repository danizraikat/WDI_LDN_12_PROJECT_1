class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :course_type_id
      t.integer :classroom_id
      t.string :name
      t.date :start_date
      t.date :end_date
      t.text :description
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
