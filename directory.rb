# create an array to list students in
students = [
  { name: 'Chayya Syal', cohort: :November },
  { name: 'Darth Vader', cohort: :November },
  { name: 'Batman Batman', cohort: :November },
  { name: 'The Wicked Witch of the West', cohort: :November },
  { name: 'Covfefe', cohort: :November }
]
def print_header
  puts 'The students of Test Academy'
  puts '--------------------'
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

print_header
print(students)
print_footer(students)
