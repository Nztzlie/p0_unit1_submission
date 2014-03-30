# U1.W3: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution
def get_grade(grades)
    sum = 0
    grades.each do |x|
        sum += x
    end
    average = sum / grades.length
    case 
    when average >= 90
        return "A"
    when average >= 80
        return "B"
    when average >= 70
        return "C"
    when average >= 60
        return "D"
    else 
        return "F"
    end
end



# 3. Refactored Solution



# 4. Reflection 