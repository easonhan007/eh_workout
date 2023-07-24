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