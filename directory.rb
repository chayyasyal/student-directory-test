def interactive_menu
  students = []
  loop do
    # 1. print the menu and ask user what to do
    puts '1. Import students'
    puts '2. Show students'
    puts '9. Exit'
    # 2. read input and save it into a variable
    selection = gets.chomp
    # 3. do what user has asked
    case selection
    when '1'
      students = input_students
    when '2'
      print_header
      print(students)
      print_footer(students)
    when '9'
      # exit menu
    else
      puts 'Computer says no. Try again'
      # 4. repeat from step 1
    end
  end
end

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

interactive_menu
students = input_students
print_header
print(students)
print_footer(students)
