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
if testwordonecompare == true && testwordtwocompare == true
  puts "Both terms input were words"
  wordcompareresult = examplecompare.wordcompare()
  if wordcompareresult == true
    puts "They are anagrams"
  elsif wordcompareresult == false
    result = examplecompare.antigram_test()
    return result
  end
elsif testwordone == false or testwordtwo == false
  puts "One or more terms input was not a word.  Please put in two words and try again."
end
puts "See ya later!"
