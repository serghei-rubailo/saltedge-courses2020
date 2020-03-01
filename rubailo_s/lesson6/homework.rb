# problem 1
# Use the each method of Array to 
# iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 
# and print out each value.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |index| puts index }

# problem 2
# Same as above, but only print out values greater than 5.

# variant 1
arr1 = arr.select do |number| 
	number > 5
end
puts arr1

#variant 2
arr.each do |number|
	if number > 5
		puts number
	end
end

# problem 3
# Now, using the same array from #2, 
# use the select method to extract all odd numbers into a new array.
arr2 = arr.select do |number| 
	number.odd?
end
print arr2
puts

# problem 4
# Append 11 to the end of the original array. Prepend 0 to the beginning.
arr.append(11)
arr.prepend(0)
print arr
puts

# problem 5
# Get rid of 11. And append a 3.
arr.delete(11)
arr.append(3)
print arr
puts #next line

# problem 6
# Get rid of duplicates without specifically removing any one value.
arr.uniq!
print arr
puts #next line

# problem 7
# Tell what's the major difference between an Array and a Hash?
# 1. In Hash any object can become index. Ex: {"d"=>1, :f=>"dd"}, in Array index is "integer"
# 2. Array is ordered but Hash is unordered
# 3. Hash is key-value, Array integer indexed

# problem 8
# Suppose you have a hash h = { a:1, b:2, c:3, d:4 }
h = { a:1, b:2, c:3, d:4 }

# problem 9
# Can hash values be arrays? - YES
hash_of_arrays = {:array1 => [1,2,3], :array2 => [3,4,5], :array3 => [5,33,44]}
# Can you have an array of hashes? (give examples) - YES
array_of_hashes = [{:array1 => [1,2,3], :array2 => [3,4,5], :array3 => [5,33,44]}, {:array1 => [1,2,3]}]

# problem 10
# Given the following data structures. Write a program that copies the information 
# from the array into the empty hash that applies to the correct person.
# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contact_data_index = 0

contacts.each do |key,value|
	contacts[key][:email] = contact_data[contact_data_index][0]
	contacts[key][:address] = contact_data[contact_data_index][1]
	contacts[key][:phone] = contact_data[contact_data_index][2]
	contact_data_index += 1
end
print contacts
puts

# problem 11
# Using the hash you created from the previous exercise, 
# demonstrate how you would access Joe's email and Sally's phone number?
puts "Joe's email: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number: #{contacts["Sally Johnson"][:phone]}"

# problem 12
# Use Ruby's Array method delete_if and String method start_with? 
# to delete all of the words that begin with an "s" in the following array.
# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
# Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |word| word.start_with?("s")}
print arr
puts

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |word| word.start_with?("s") || word.start_with?("w")}
print arr
puts

# problem 13
# Take the following array:
# a = ['white snow', 'winter wonderland', 'melting ice','slippery sidewalk', 'salted roads', 'white trees']
# and turn it into a new array that consists of strings containing one word. 
# (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, 
# as well as String's split method.
a = ['white snow', 'winter wonderland', 'melting ice','slippery sidewalk', 'salted roads', 'white trees']
a1 = a.map(&:split).flatten

print a1
puts

# problem 14
# What will the following program output?
# hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true} hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}
# if hash1 == hash2 puts "These hashes are the same!" else puts "These hashes are not the same!" end
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true} 
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2 
	puts "These hashes are the same!" 
else 
	puts "These hashes are not the same!" 
end
#"These hashes are the same!" - because hashes are not ordable, in other words it doesn't matter 
# in which possitions key-value pairs are located in hash1 and hash2

# problem 15
# Programmatically loop or iterate over the contacts hash from exercise 10, 
# and populate the associated data from the contact_data array. 
# Hint: you will probably need to iterate over ([:email, :address, :phone]), 
# some helpful methods might be the Array shift and first methods.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts_fields_array = [:email,:address,:phone]

contacts.each do |key,value|
	contacts_fields_array.each do |field|
		contacts[key][field] = contact_data.first[contacts_fields_array.index(field)]
	end
	contact_data.shift
end
print contacts
puts