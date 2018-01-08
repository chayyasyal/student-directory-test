# create an array to list students in
students = [
  'Chayya Syal',
  'Darth Vader',
  'Batman Batman',
  'The Wicked Witch of the West',
  'Covfefe'
]
def print_header
  puts 'The students of Test Academy'
  puts '--------------------'
end

def print(names)
  names.each do |name|
    puts name
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

print_header
print(students)
print_footer(students)
