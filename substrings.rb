def substrings(word, array_of_substrings)
  formatted_word=word.downcase
  result_hash=Hash.new(0)
  array_of_substrings.each do |string|
    count=0
    counter=formatted_word.gsub(string)
    counter.each do
      count+=1
    end
    if count>0
      result_hash[string]+=count
    end
  end
  puts result_hash

end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)