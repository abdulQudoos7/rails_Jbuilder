class AddColumnToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :studentName, :string
    add_column :students, :studentRollNo, :string
    add_column :students, :StudentClass, :string
    add_column :students, :studentMail, :string
  end
end
