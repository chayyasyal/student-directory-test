# create an array to list students in
students = [
  ['Chayya Syal', :november],
  ['Darth Vader', :november],
  ['Batman Batman', :november],
  ['The Wicked Witch of the West', :november],
  ['Covfefe', :november]
]
def print_header
  puts 'The students of Test Academy'
  puts '--------------------'
end

def print(students)
  students.each do |student|
    puts "#{student[0]} (#{student[1]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

print_header
print(students)
print_footer(students)
