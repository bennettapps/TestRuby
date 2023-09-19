class CreateStudentButDumbs < ActiveRecord::Migration[7.0]
  def change
    create_table :student_but_dumbs do |t|
      t.integer :offset_from_roy
      t.string :name
      t.boolean :doctor_e_watching
      t.integer :age
      t.boolean :in_syria

      t.timestamps
    end
  end
end
