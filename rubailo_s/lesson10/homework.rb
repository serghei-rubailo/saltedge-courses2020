require 'rest-client'
require 'json'

base_url = 'https://jsonplaceholder.typicode.com/'

### Problem 1
# Print the emails of first 5 users from `/users`.
n = 5

response = RestClient.get(base_url + 'users')
users = JSON.parse(response)

n.times do |i|
	puts "Email of user #{i + 1}: #{users[i]['email']}"
end

### Problem 2
# Pick a random number `n` from 1 to 7(not hardcoded one). 
# Print all posts titles of the user with ID `n` from `/users/[n]/posts`.

n = rand(1..7)

response = RestClient.get(base_url + 'users/' + n.to_s + '/posts')
posts = JSON.parse(response)

puts "------- Post Titles 1 BEGIN--------"
posts.each do |post|
	puts post['title']
end
puts "------- Post Titles 1 END--------"

### Problem 3
#It's the same as above, but use `/posts?userId=[n]` endpoint.
n = rand(1..7)

response = RestClient.get(base_url + 'posts?userId=' + n.to_s)
posts = JSON.parse(response)

puts "------- Post Titles 2 BEGIN--------"
posts.each do |post|
	puts post['title']
end
puts "------- Post Titles 2 END--------"


### Problem 4
# Pick a random number `n` from 4 to 10 (not hardcoded one). 
# Try to update name the user with ID `n`. 
# Print the response in the form:
n = rand(4..10)

body = {
	name: 'Daniel'
}

response = RestClient.put(base_url + 'users/' + n.to_s, body)
new_name = JSON.parse(response)['name']

puts "```"
puts "New name: #{new_name}"
puts "```"

### Problem 5
# Pick a random number `n` from 12 to 25 (not hardcoded one). 
# Try to delete the post with ID `n`.
n = rand(12..25)

response = RestClient.delete(base_url + 'posts/' + n.to_s)

### Problem 6
# Print `name` of users that have written first 20 posts. 
# Use `/posts` to get the collection of posts.
# _Hint: you may need to make some additional requests to other endpoints._
n = 20

response = RestClient.get(base_url + 'posts')
posts = JSON.parse(response)

n.times do |i|
	user_id = posts[i]['userId']
	response = RestClient.get(base_url + 'users/' + user_id.to_s)
	user_name = JSON.parse(response)['name']
 	puts "Post #{i + 1} was writeen by #{user_name}"
end