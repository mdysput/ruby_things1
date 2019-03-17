class Student

 # attr_accessor :first_name, :last_name, :email, :password

  # attr_reader :username
  #
  # @first_name
  # @last_name
  # @email
  # @username = "michal2"
  # @password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  # def first_name=(name)
  #   @first_name = name
  # end
  #
  # def first_name
  #   @first_name
  # end
  #
  #
  # def set_username
  #   @username = "Dysput"
  # end

  def lecimy
    puts "jazda"

  end

  def to_s
    "First name: #{@first_name}, last name is= #{@last_name}, UserName"
  end


end

michal = Student.new("Michal", "Hossain", "mashrur1", "mashrur@example.com",
                     "password1")
john = Student.new("John", "Doe", "john1", "john1@example.com",
                   "password2")

michal.lecimy

# puts michal
# puts john


# michal.first_name = "Michal"
# michal.last_name = "Dysput"
# michal.email = "md@gmail.com"
# michal.set_username
# #michal.username = "michal1"
# puts michal.first_name
# puts michal.last_name
# puts michal.email
# puts michal.username





