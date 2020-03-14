require 'rest-client'
require 'json'

api_url = 'https://jsonmonk.com/api/v1'

#get list of users
response = RestClient.get(api_url + '/users').body

#parse JSON to hash
users_list_hash = JSON.parse(response)

#get first user from list
first_user_id = users_list_hash['data']['records'].first['_id']

#get first user information from API
response = RestClient.get(api_url + '/users/' + first_user_id).body
first_user = JSON.parse(response)

puts "First user info"
puts "First name: #{first_user['data']['first_name']}"
puts "Last name: #{first_user['data']['last_name']}"


#new user info
new_user = {
	first_name: "John",
	last_name: "Smith",
	email: "j124437@test.test",
	mobile_no: "5559998877",
	password: "qweasd123"
}

#create new user
response = RestClient.post(api_url + '/users', new_user) 
response_hash = JSON.parse(response)
new_user_id = response_hash['data']['_id']
puts "Create result: #{response_hash['message']}"

#get info about created user
response = RestClient.get(api_url + '/users/' + new_user_id)
existing_user = JSON.parse(response)
existing_user_id = existing_user['data']['_id']

#delete created user
response = RestClient.delete(api_url + '/users/' + existing_user_id)
response_hash = JSON.parse(response)
puts "Delete result: #{response_hash['message']}"
