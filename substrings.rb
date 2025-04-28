def substrings(word, array_of_substrings)
  formatted_word=word.downcase
  result_hash=Hash.new(0)
  array_of_substrings.each do |substring|
    count=0
    counter=formatted_word.gsub(substring)
    counter.each {count+=1}
    result_hash[substring]+=count if count>0
  end
  result_hash

end

def substrings1(text, array_of_substrings)
  words_in_text=text.split(" ")
  array_of_substrings.reduce(Hash.new(0)) do |result_hash, substring|
    words_in_text.each do |word|
      if word.downcase.include?(substring.downcase)
        result_hash[substring] += 1 
      end
    end
    result_hash
  end
end



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings1("Howdy partner, sit down! How's it going?", dictionary)