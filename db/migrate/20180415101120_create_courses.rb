class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.text :name
      t.text :course_type
      t.integer :duration
      t.text :code
      t.string :student_id

      t.timestamps
    end

    add_index :courses, 'student_id'
  end
end
