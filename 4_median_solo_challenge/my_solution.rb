# U1.W3: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution
def median (array)
	array.sort!
	len = array.length
	if len % 2 == 1
		array[len/2.0]
	else
		(array[len/2] + array[(len-1)/2])/2.0
	end
end

# 3. Refactored Solution
def median (array)
  array.sort!
  len = array.length
  (array[(len-1)/2] + array[len/2])/2.0
end

# 4. Reflection 
# I spent far longer than expected on this exercise trying to decide 
# when to use "2" and when to use "2.0" to get the answer I wanted.
# Having trouble using this for word strings.