# U1.W3: Pad an Array!

# I worked on this challenge [by myself, with: ].

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with Dinesh Rai.

# 1. Pseudocode

# What is the input?
# The input number of elements and the new value for the elements.
# What is the output? (i.e. What should the code return?)
# the new arrays created, depending on a permanent change vs non-permanent change.
# What are the steps needed to solve the problem?
# define pad!, knowing the desired length and the length of the array. 

# 2. Initial Solution

class Array
    def pad!(new_length, new_element= nil)
        if new_length <= self.length
            return self
        else
            difference = new_length-self.length
            while difference > 0
                self << new_element
                difference--
            end    
        end
        return self
    end
    
    def pad(new_length, new_element = nil)
        new_array = self.clone
        if new_length <= self.length
            return self
        else
            difference = new_length-self.length
            while difference > 0
                new_array << new_element
                difference--
            end   
        return new_array
        end
    end    
end


# 3. Refactored Solution
class Array
    def pad!(new_length, new_element= nil)
        if new_length <= self.length
            return self
        else
            difference = new_length-self.length
            while difference > 0
                self << new_element
                difference--
            end    
        end
    end
    
    def pad(new_length, new_element = nil)
        new_array = self.clone
        new_array.pad!(new_length,new_element)
    end    
end

# 4. Reflection 
#What parts of your strategy worked? What problems did you face?
# This was a challenging coding exercise for me, as I had trouble understanding
# what exactly was being asked.
# Understanding class Array was new to me, as was trying to understand how to 
# express the code in a more compact fashion.  

#What questions did you have while coding? What resources did you find to help you answer them?
# I had trouble understanding the difference between a permanent and non-permanent change. 

#What concepts are you having trouble with, or did you just figure something out? If so, what?
#Did you learn any new skills or tricks?
# I learned about calling previous chunks of code --the new_array.pad!(new_length,new_element)
# bit of code in refactoring was interesting and useful

#How confident are you with each of the learning objectives?
# I am moderately confident, still feel that it takes me quite a bit of effort to understand
# concepts but pairing is immensely helpful

#Which parts of the challenge did you enjoy?
# I enjoyed when I started being able to translate my pseudocode into real code

# Which parts of the challenge did you find tedious? 
# My biggest issue is making small mistakes and being terrible and fixing them. It takes me
# significant time investment and is tedious.
