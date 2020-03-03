# Write a method that takes 2 numbers as arguments and outputs their product.
def two_number_product(item1, item2)
	puts "Product: #{item1 * item2}"
end
two_number_product(10,33)

# Write a method that takes any amount of numbers as arguments and outputs their product.
def any_number_product(*item)
	product = 1
	item.each do |num|
		product = product * num
	end
	puts "Product: #{product}"
end
any_number_product(2,3,4)

# Write a method that takes 2 keyword arguments: dividend and divisor,
# and outputs the result of dividing the dividend by the divisor. Try to
# change the order of the keyword arguments when invoking the method!
def division(divident:, divisor:)
	puts "Division: #{divident / divisor}"
end
division(divident: 50, divisor: 5)
division(divisor: 30, divident: 60)

# Do the same as in exercise 3, but make the dividend a simple argument
# (not a keyword one). See if changing the order of the arguments still works!
def division(divident, divisor:)
	puts "Division: #{divident / divisor}"
end

division(50, divisor: 5) 
# division(divisor: 30, 60)  will not work