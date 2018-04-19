class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string   :first_name
      t.string   :last_name
      t.string   :admission_number
      t.integer   :national_id_number
      t.string   :course
      t.string   :department
      t.string     :year_of_admission
      t.string     :year_of_completion
      t.string   :gender
      t.string   :fee_status
      t.string   :course_id


      t.timestamps
    end

    add_index 'students', :course_id
  end
end
