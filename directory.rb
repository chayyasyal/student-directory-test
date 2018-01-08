@students = []

def input_students
  puts 'Please enter the names of the students'
  puts 'To finish, hit the return key twice'
  name = gets.chomp
  until name.empty?
    @students << { name: name, cohort: :November }
    puts "Now we have #{@students.count} students"
    name = gets.chomp
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def print_menu
  puts '1. Input students'
  puts '2. Show students'
  puts '9. Exit'
  end

def show_students
  print_header
  print_students_list
  print_footer
end

def process(selection)
  case selection
  when '1'
    input_students
  when '2'
    show_students
  when '9'
    exit
  else
    puts 'Computer says no. Try again.'
  end
end

def print_header
  puts 'The students of Test Academy'
  puts '--------------------'
  end

def print_students_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

interactive_menu
