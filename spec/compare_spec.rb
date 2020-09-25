require('compare')
require 'rspec'

describe ('Compare') do
  test= Compare.new()
  word = "tea"
  otherword = "tea"
  it('compares letters in a word') do
    expect(test.wordcompare(word,otherword)).to(eq(true))
  end

  describe ('is_a_word') do 
    test= Compare.new()
  word = "tea"
  alphabetizedword = test.alphabetizer(word)
   it('checks for vowels and returns true if there are any') do 
    expect(test.is_a_word(alphabetizedword)).to(eq(true)) 
     end 
      end

  describe ('alphabetizer') do 
    test= Compare.new()
    word = "tea"
   it('alphabetizes word') do 
    expect(test.alphabetizer(word)).to(eq(["a","e","t"])) 
     end 
      end 
end

