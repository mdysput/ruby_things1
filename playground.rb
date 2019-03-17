users = [
    {username: "michal", password: "password1"},
    {username: "anna", password: "password2"},
    {username: "ada", password: "password3"}
]

def auth_user(username, password, list_of_users)

  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
      break
    end
  end
  return "Credentials were not correct"
end

puts "Welcome authenticator"
25.times {print "-"}
puts
puts "Program will take input from user"




attempts = 1

while attempts < 4

  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp

  authentication = auth_user(username, password, users)

  puts authentication

  puts "Press n to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "n"
  attempts += 1

end

puts "you hace exceeded the number of attempts"
#################

list_of_users = { "michal" => "password1",
       "anna" => "password2",
       "ada" => "password3"
}

def auth_user(username, password, list_of_users)
  if list_of_users.key? username
      list_of_users.slice(username)
  else
    false
  end


  # 1 list_of_users[username] == password
end