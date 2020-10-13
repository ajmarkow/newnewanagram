require "./lib/compare"

puts "Give me two words, and i'll tell you if they are Anagrams or Antigrams."
puts "Lets start with the first word:"
firstword = gets.chomp
puts "Great, now let's have the second word youd like to check against:"
secondword = gets.chomp
examplecompare = Compare.new(firstword, secondword)
puts "Alright, we're computing!"
examplecompare.makewordsconsistent()
testwordonecompare = examplecompare.is_a_word(examplecompare.word)
testwordtwocompare = examplecompare.is_a_word(examplecompare.otherword)
examplecompare.alphabetizer()
if testwordonecompare == true && testwordtwocompare == true && examplecompare.word.difference(examplecompare.otherword).none?
  puts "Both terms input were words"
  puts "They are also anagrams."
elsif testwordonecompare == false && testwordtwocompare == false
  puts "One or more terms input were not words."
else testwordonecompare == true && testwordtwocompare == true && examplecompare.word == examplecompare.otherword
  puts examplecompare.antigram_test end
puts "See ya later!"
