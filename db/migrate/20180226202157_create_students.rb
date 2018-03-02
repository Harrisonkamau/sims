class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string   :first_name
      t.string   :last_name
      t.string   :admission_number
      t.number   :national_id_number
      t.string   :course
      t.string   :department
      t.date     :year_of_study
      t.string   :gender


      t.timestamps
    end
  end
end
