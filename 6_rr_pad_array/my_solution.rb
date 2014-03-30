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
# Copy solution here:




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




# 5. Reflection