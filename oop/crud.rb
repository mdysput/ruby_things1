require 'bcrypt'

users = [
    {username: "michal", password: "password1"},
    {username: "anna", password: "password2"},
    {username: "ada", password: "password3"},
    {username: "piotr", password: "password4"},
    {username: "adam", password: "password5"}
]

def create_hash_digest(password)
  BCrypt::Password.create(password)
end


def verify_hash_digest(passwords)
  BCrypt::Password.new(passwords)
end

def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest(user_record[:password])

  end

  list_of_users
end


# new_password= create_hash_digest("password1")
# puts new_password == "password1"

puts create_secure_users(users)

def authenticate_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username]== username && verify_hash_digest(user_record[:password])== password
      return user_record
    end
  end

end







