def input_students
  puts 'Please enter the names of the students'
  puts 'To finish, hit the return key twice'
  students = []
  # get first name
  name = gets.chomp
  # while name not emply, repeate this code
  until name.empty?
    # add student hash to array
    students << { name: name, cohort: :November }
    puts "Now we have #{students.count} students"
    # get another user name
    name = gets.chomp
  end
  # return array of students
end

# # create an array to list students in
# students = [
#   { name: 'Chayya Syal', cohort: :November },
#   { name: 'Darth Vader', cohort: :November },
#   { name: 'Batman Batman', cohort: :November },
#   { name: 'The Wicked Witch of the West', cohort: :November },
#   { name: 'Covfefe', cohort: :November }
# ]
def print_header
  puts 'The students of Test Academy'
  puts '--------------------'
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
# nothing happens until methods are called
print_header
print(students)
print_footer(students)
