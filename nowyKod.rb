word= "aababbdacac"

hash={}
chars= word.split("")

chars.each do |char|
  if hash.key? (char)
    hash[char] +=1
  else
    hash[char] = 1
  end
end

result="?"

hash.each do |key, value|
  if(hash[key] == 1)
    result = key
    break
  end
end

puts result