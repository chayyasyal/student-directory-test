@students =
  ['name' => 'Chayya Syal', 'cohort' => 'November']
['name' => 'Darth Vader', 'cohort' => 'November']
['name' => 'Batman Batman', 'cohort' => 'November']
['name' => 'The Wicked Witch of the West', 'cohort' => 'November']
['name' => 'Covfefe', 'cohort' => 'November']

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
  puts '1. Input the students'
  puts '2. Show the students'
  puts '3. Save list to students.csv'
  puts '4. Load the list from students.csv'
  puts '9. Exit'

    # will add more items to menu
  end

def show_students
  print_header
  print_students_list
  print_footer
end

def load_students
  file = File.open('students.csv', 'r')
  file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
    @students << { name: name, cohort: cohort.to_sym }
  end
  file.close
end

def process(selection)
  case selection
  when '1'
    input_students
  when '2'
    show_students
  when '3'
    save_students
  when '4'
    load_students
  when '9'
    exit
  else
    puts 'Computer says no. Try again.'
  end
end

def save_students
  file = File.open('students.csv', 'w')
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(',')
    file.puts 'This is written to a file'
  end
  file.close
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

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

interactive_menu
