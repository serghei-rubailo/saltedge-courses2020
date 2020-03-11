# Problem 1
# Use each method of Array to 
# iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 
# and print our each value.
puts "Problem 1:"
arr = (1..10).to_a
 
# multi-line version
arr.each do |number|
 puts number
end
 
# Problem 2
# Same as above, but only print out values
# greater than 5.
 
puts "\nProblem 2:"
#select method
puts "select method:"
Num_greater_5 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select {|num| num > 5}
puts Num_greater_5
 
#each method
puts "\neach method:"
arr = (1..10).to_a
 
arr.each do |number|
 if (number > 5)
 puts number
end
end
 
# Problem 3
# Now, using the same array from #2, use the select method
# to extract all odd numbers into a new array.
puts "\nProblem 3"
arr = (1..10).to_a
 array1 = arr.select do |num|
 num.odd?
end
puts array1
 
# Problem 4
# Append 11 to the end of the original array. Prepend 0 to the beginning.
puts "\nProblem 4:"
arr_orig = (1..10).to_a
arr_orig.append(11)
arr_orig.prepend(0)
puts arr_orig
 
# Problem 5
# Get rid of 11. And append a 3.
puts "\nProblem 5:"
arr_orig.delete(11)
arr_orig.append(3)
puts arr_orig
 
# Problem 6
# Get rid of duplicates without #specifically removing any one value.
puts "\nProblem 6:"
arr_orig.uniq
puts arr_orig.uniq
 
# Problem 7
# Tell what's the major difference between an Array and a Hash?
puts "\nProblem 7:"
puts "Array uses integers as its index, a Hash allows to use any object type"
 
# Problem 8
puts "\nProblem 8:"
# Suppose you have a hash h = { a:1, b:2, c:3, d:4 }
h = { a:1, b:2, c:3, d:4 }
#Get the value of key :b.
puts h[:b]
#Add to this hash the key:value pair {e:5}
h[:e] = 5
puts h
#Remove all key:value pairs whose value is less than 3.5
hash_with_k_v_removed = h.delete_if {|key, value| value < 3.5}
puts hash_with_k_v_removed.inspect
 
# Problem 9
# Can hash values be arrays? Can you have an array of hashes? (give examples)
puts "\nProblem 9:"
puts "Yes, we can have both Array of hashes and Hash of arrays"
puts "\nArray_of_hashes example:"
@test_array = []
puts @test_array.push(name: "natalia" ,age: 30)
 
puts "\nHash_of_arrays example:"
hash_test = { "a" => [1, 2, 3], "b" => [18, 21, 9] }
puts hash_test
 
# Problem 10
# Given the following data structures. Write a program that copies the information from the array into the empty hash that applies to the correct person.
puts "\nProblem 10:"
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
contact_1 = {:email => contact_data[0][0].to_s, :adress => contact_data[0][1].to_s,:phone => contact_data[0][2].to_s}
contact_2 = {:email => contact_data[1][0].to_s, :adress => contact_data[1][1].to_s,:phone => contact_data[1][2].to_s}
puts contacts = {"Joe Smith" => contact_1, "Sally Johnson" => contact_2}
 
# Problem 11
# Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
puts "\nProblem 11:"
puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]
 
# Problem 12
# Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.
puts "\nProblem 12:"
puts "Part 1:"
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr_without_s = arr.delete_if{ |key| key.start_with?("s")}
puts arr_without_s
 
# Then recreate the arr and get rid of all of the words that start with "s" or starts with "w"
puts "\nPart 2"
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr_without_sw = arr.delete_if{ |key| key.start_with?("s","w")}
puts arr_without_sw
 
# Problem 13
# Take the following array:
# a = ['white snow', 'winter wonderland', 'melting ice','slippery sidewalk', 'salted roads', 'white trees']
# and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...].
# Look into using Array's map and flatten methods, as well as String's split method.
puts "\nProblem 13:"
a = ['white snow', 'winter wonderland', 'melting ice','slippery sidewalk', 'salted roads', 'white trees']
a1 = a.collect { |x| x.split}
puts a1.flatten
 
# Problem 14
# What will the following program output?
puts "\nProblem 14:"
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}
 
if hash1 == hash2
 puts "These hashes are the same!"
else puts "These hashes are not the same!"
end
 
 
# Problem 15
# Programmatically loop or iterate over the contacts hash from exercise 10, and populate the associated data from the contact_data array.
# Hint: you will probably need to iterate over ([:email, :address, :phone]), some helpful methods might be the Array shift and first methods.
puts "\nProblem 15:"
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
field_types = [:email, :address, :phone]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
 
contacts.each_with_index do |(person, person_data), index|
 field_types.each do |field_type|
   person_data[field_type] = contact_data[index].shift
 end
end
print contacts

