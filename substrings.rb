def substrings(input_string)
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  input_string = input_string.downcase
  sub_hash = input_string.split(' ').reduce(Hash.new(0)) do |object, word|
    dictionary.each{|element| object[element] += 1 if word.include?(element)}
    object
  end
  return sub_hash
end

puts "Enter any word or phrase to be checked for substrings against the dictionary"
puts substrings(gets.chomp)
