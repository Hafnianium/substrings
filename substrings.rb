def substrings(input_string)
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  split_dictionary = dictionary.map do |word| # Splits dictionary into a nested array
    word.split('')
  end
  split_input = input_string.split('')
  sub_hash = {} # Hash to store matches
  split_dictionary.each do |word|
    word_match = (word & split_input).join('') #Iterate through split dictionary and check matches
    if word_match == word.join('') # check word match is a word in original dictionary
      if sub_hash[word_match] == 1 # check match is already present in hash
        sub_hash[word_match] += 1
      else
        sub_hash[word_match] = 1
      end
    else
    end
  end
  return sub_hash
end

puts "Enter any word or phrase to be checked for substrings against the dictionary"
puts substrings(gets.chomp)
