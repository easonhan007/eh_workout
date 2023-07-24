# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

admin_acount = 'admin@itest.info'
passwd = '123456'
unless User.exists?(email: admin_acount)
  puts("can not find default admin, will create a new one")
  User.create!(email: admin_acount, password: passwd, password_confirmation: passwd)
end

admin = User.find_by!(email: admin_acount)

categories = [
  {'name': 'Barbell', 'kls': 'StrengthRecord'},
  {'name': 'Dumbbell', 'kls': 'StrengthRecord'},
  {'name': 'Strength', 'kls': 'StrengthRecord'},
  {'name': 'Reps only', 'kls': 'RepsOnlyRecord'},
  {'name': 'Duration', 'kls': 'DurationRecord'},
  {'name': 'Cardio exercise', 'kls': 'CardioRecord'},
]

categories.each do |c| 
  puts("creating Category #{c[:name]}")
  Category.find_or_create_by!(name: c[:name], record_kls: c[:kls], user_id: admin.id)
end #each

body_parts = %w(None Core Arms Back Chest Legs Shoulders Other Olympic Cardio)
body_parts << 'Full Body'

body_parts.each do |bp|
  puts "creating Body Part #{bp}"
  BodyPart.find_or_create_by!(name: bp)
end #each

exercises = [
  {name: 'Plank', category: 'Duration', body_part: 'Core'},
  {name: 'Push Up', category: 'Strength', body_part: 'Chest'},
  {name: 'Running', category: 'Cardio exercise', body_part: 'Cardio'},
  {name: 'Jump Rope', category: 'Reps only', body_part: 'Cardio'},
]

exercises.each do |ex|
  puts "creaing exercise #{ex[:name]}"
  category = Category.find_by!(name: ex[:category])
  body_part = BodyPart.find_by!(name: ex[:body_part])
  Exercise.find_or_create_by!(name: ex[:name], category_id: category.id, body_part_id: body_part.id, user_id: admin.id)
end

templates = [
  {name: 'Cardio',  exercises: ["Running", "Jump Rope"]},
  {name: 'Full Body',  exercises: ["Plank", "Push Up", "Running"]}
]

templates.each do |temp|
  puts "creating template #{temp[:name]}"
  exercises = Exercise.where(name: temp[:exercises]).all
  t = Template.find_or_create_by!(name: temp[:name], user_id: admin.id)
  t.exercises = exercises
  t.save()
end #each