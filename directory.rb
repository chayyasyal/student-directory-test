# create an array to list students in
students = [
  'Chayya Syal',
  'Darth Vader',
  'Batman Batman',
  'The Wicked Witch of the West',
  'Covfefe'
]

# print them like this
puts 'The students of Test Academy'
puts '--------------------'
students.each do |student|
  puts student
end
# print total number of students here
puts "Overall, we have #{students.count} great students"
