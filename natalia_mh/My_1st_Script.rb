# Float/Integer
 
# -123 - find out if it's odd?
puts -123.odd?  
 
# 6893 - show what next number will be
next_number = 6893.next
puts next_number
 
# 0 - show the previous number
pred_number = 0.pred 
puts pred_number
 
# 12 - cast it to float, then divide by 4.5 then round it up
round_up_number = (12.to_f / 4.5).ceil
puts round_up_number
 
# 28 - call modulo by 6, then multiply result by 4.7 and round it down
round_down_number = ((28 % 6) * 4.7).floor
puts round_down_number
 
# String
 
# "Brand new bicycle\r\n" - remove trailing special characters
puts "Brand new bicycle\r\n".chop 
 
# "Brand new bicycle" - using indexes extract new
puts "Brand new bicycle"[6..8] 
 
# "Brand new bicycle" - delete last word
puts "Brand new bicycle".sub("bicycle"," ")
 
# "Brand new bicycle" - check if the string's last word is bicycle
puts "Brand new bicycle".split.last == "bicycle"
 
# "Brand new bicycle" - find out what index the letter "w" has
puts "Brand new bicycle".index("w") 
 
# "I thought I knew everything before that night" - split the string in 3 parts to get the following result: "I thought I knew ", "everything", "before that night"
puts "I thought I knew everything before that night".split(/(everything)/).to_s
 
# "Final result from Float/Integer part is: " - using interpolation place the sum of all results from first 5 examples to the end of string.
puts "Final result Float/Integer part is #{next_number + pred_number + round_up_number + round_down_number}"

