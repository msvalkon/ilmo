# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

if not ARGV
  puts "Not enough parameters"
  exit(2)
end

if ARGV[1] == 'Yes'
  Course.delete_all
end

Courses_to_add = ARGV[1].to_i

Courses_to_add.times {
  Course.create :name => "Course_test", :description => "Lorem Ipsum Lorem " *10
  puts "Added #{Course.name}"
}
