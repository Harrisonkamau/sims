class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.string 'status'
      t.datetime 'date'
      t.integer 'student_id'
      t.timestamps
    end

    add_index :attendances, :student_id
  end
end
