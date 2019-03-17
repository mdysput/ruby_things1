dial_book={
    "newyork" => "212",
    "edison" => "213",
    "lublin"=> "124",
    "miami"=> "125",
    "lasvegas"=> "531",
    "gdansk"=>"622",
    "wadowice"=>"734"
}

def get_city_name(somehash)
  somehash.keys

end

def get_area_code(somehash, key)
  somehash[key]
end

loop do
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  answer= gets.chomp.downcase
  break if answer != "y"

  puts "which city are you looking up?"
  puts get_city_name(dial_book)
  puts "Enter your selection"
  prompt= gets.chomp
  if dial_book.include?(prompt)
    puts "The are code for #{prompt} is #{get_area_code(dial_book, prompt)}"
  else
    puts "you entered an invalid city name"
  end
end