require 'Compare'

puts "Give me two words, and i'll tell you if they are Anagrams or Antigrams."
puts "Lets start with the first word:"
firstword = gets.chomp
puts "Great, now let's have the word youd like to check against"
secondword = gets.chomp

puts "We've checked your words and it is #{result} they are anagrams.  It is #{antigramresult} they are antigrams."