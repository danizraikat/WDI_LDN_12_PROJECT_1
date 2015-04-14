# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create!(email: "admin@admin.com", password: "password", role: "admin", first_name: "admin", second_name: "admin", gender: "female", tel_number: "077777777")
u2 = User.create!(email: "dani@dani.com", password: "password", role: "student", first_name: "dani", second_name: "zraykat", gender: "male", tel_number: "07557359072")

course_type1 = CourseType.create!(name: "WDI", description: "Best course")
course_type2 = CourseType.create!(name: "Analytics", description: "The analytics course")

campus1 =  Campus.create!(name: "Second Home", address: "Hanbury Street")
campus2 =  Campus.create!(name: "First", address: "Farrington")

classroom1 = campus1.classrooms.create!(name: "Classroom1", capacity: 50)
classroom2 = campus2.classrooms.create!(name: "Classroom2", capacity: 20)

course1 = course_type1.courses.create!(classroom_id: classroom1.id, name: "WDI12", start_date: Time.now, end_date: Time.now + 60.days, description: "The new WDI", capacity: 50)
course2 = classroom2.courses.create!(course_type_id: course_type2.id, name: "Analytics12", start_date: Time.now + 30.days, end_date: Time.now + 60.days, description: "The new Analytics", capacity: 20)

booking1 = u1.bookings.create!(course_id: course1.id, paid: true)
booking2 = course2.bookings.create!(user_id: u2.id, paid: true)

