def interactive_menu
  students = []
  loop do
    # 1. Print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # 9 because we'll be adding more items
    # 2. Read the input and assign it to a variable
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end

def input_students
  puts "Please enter the name of the student"
  puts "To finish, just hit return twice"
# Create an empty array
  students = []
# Get the first name
  name = gets.chomp
# While the name is not empty, repeat this code
  while !name.empty? do
    students << { name: name, cohort: :november }
    puts "Now we have #{students.count} students"
#   Get another name from the user
    name = gets.chomp
  end
#  Return the array of students
  students
end
  

# then we print them
def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

# nothing happend until we call each method
students = input_students
print_header
print(students)
print_footer(students)
