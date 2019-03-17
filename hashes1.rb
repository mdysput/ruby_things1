def sort_by_frequency(a)
  len=a.length
  freq=Hash.new() #Hash to store element,count and starting index
  for i in 0...len
    # Storing count and index in hash with element as the key
    unless freq[a[i]]
      freq[a[i]]={}
      freq[a[i]][:count]=1
      freq[a[i]][:index]=i
    else
      freq[a[i]][:count]+=1
    end
  end

  freq=freq.sort_by{|k,v| [-v[:count],v[:index]]} # Sort the hash by decreasing count value and if count is same then by index(starting index)
  p=0                         # Index to iterate over array
  # Iterate on hash
  freq.each do |k,v|
    for i in 0...v[:count]
      a[p]=k
      p+=1
    end
  end
  return a
end


sort_by_frequency([1,3,3,3,4,4,4,2,2,2,5])