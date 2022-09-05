# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


10.times do |i|
  @student = Student.create(
    studentName: "name #{i + 1}",
    studentRollNo: "RollNo #{i + 1}",
    StudentClass: "Class #{i + 1}",
    studentMail: "student#{i + 1}@gmail.com"
  )
end
