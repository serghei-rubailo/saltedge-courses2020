# METHODS
# 1. Write a method that takes 2 numbers as arguments and outputs their product.
def two_number_product(item1, item2)
	puts "Product: #{item1 * item2}"
end
two_number_product(10,33)

# 2. Write a method that takes any amount of numbers as arguments and outputs their product.
def any_number_product(*item)
	product = 1
	item.each do |num|
		product = product * num
	end
	puts "Product: #{product}"
end
any_number_product(2,3,4)

# 3. Write a method that takes 2 keyword arguments: dividend and divisor,
# and outputs the result of dividing the dividend by the divisor. Try to
# change the order of the keyword arguments when invoking the method!
def division(divident:, divisor:)
	puts "Division: #{divident / divisor}"
end
division(divident: 50, divisor: 5)
division(divisor: 30, divident: 60)

# 4. Do the same as in exercise 3, but make the dividend a simple argument
# (not a keyword one). See if changing the order of the arguments still works!
def division(divident, divisor:)
	puts "Division: #{divident / divisor}"
end

division(50, divisor: 5) 
# division(divisor: 30, 60)  will not work

# BLOCKS
def my_each(array)
	if block_given?
		for i in 0..array.length - 1
			yield array[i]
		end
	else
		return array
	end
end

array = [1, 2, 3]

array.each do |number|
	puts number
end

my_each(array) do |number|
	puts number
end

# PROCS & LAMBDAS
# Write your own proc that will do something with the name and
# use it with the get_name_and_call method. No exact
# indications this time. Be creative.

name_stats_proc = proc do |name|

	#name should begin with capital letter
	name.capitalize!

	name_length = name.length
	name_revers = name.reverse

	#next block of code counts each letter in name and store it hash
	letters = name.split(%r{\s*})
	letters_hash = {}
	letters.each do |letter|
		if letters_hash.has_key?(letter)
			letters_hash[letter] = letters_hash[letter] + 1
		else	
			letters_hash[letter] = 1
		end
	end

	#code remains in hash only letters which count is more than 1 (duplicates)
	letters_hash.select!{ |key,value| value > 1}

	puts "Hello, #{name}"
	puts "Length of your name is: #{name_length}"
	puts "Your name spelling in reverse: #{name_revers}"

	if letters_hash.count 
		puts "Your name has next duplicates letters:"
		letters_hash.each do |key,value| 
			puts "letter \"#{key}\" repeats #{value} times"
		end
	else
		puts "Your name has no duplicate letters."
	end
end

def get_name_and_call(some_proc)
	puts "What is your name?"
	name = gets.chomp
	some_proc.call(name)
end

get_name_and_call(name_stats_proc)