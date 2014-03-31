# U1.W3: Review and Refactor: Pad an Array

# I worked on this challenge [by myself, with: ].



# 1. First Person's solution I liked
#    What I learned from this solution
# This code was really efficient and neat, as well as relatively easy to follow.
# Copy solution here:
class Array
	def pad!(min_length,new_element = nil)
		while self.length<min_length
			self << new_element
		end
		return self
	end

	def pad(min_length,new_element = nil)
		self.clone.pad!(min_length, new_element)
	end
end


# 2. Second Person's solution I liked
#    What I learned from this solution
#  This was a completely different way of coding this solution, using until
#  rather than if else.  It was also very efficient.
# Copy solution here:
class Array
    def pad!(pad_length, pad_value = nil)
        self << pad_value until self.length >= pad_length
        self
    end
     
    def pad(pad_length, pad_value = nil)
        new_array = self.clone 
        new_array << pad_value until new_array.length >= pad_length
        new_array 
    end
end 



# 3. My original solution:
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



# 4. My refactored solution:
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



# 5. Reflection
# It is interesting to see how other people think through
# coding logic. As I am new to coding logic and often am unsure
# of myself, it helps to look at how other people have solved
# the same problem.