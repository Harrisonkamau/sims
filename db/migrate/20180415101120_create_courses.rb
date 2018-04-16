class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :units, array: true, default: '{}'
      t.string :student_id

      t.timestamps
    end

    add_index :courses, 'student_id'
  end
end
