require 'rspec'

class Compare 
  def wordcompare(word,otherword)
    puts "input #{word} and #{otherword}"
    if word == otherword
      answer = true
    elsif 
      answer = false
    end
    return answer
  end
  def is_a_word(word)
    if word.include?(/'a'|'e'|'i'|'o'|'u'?/i)
      answer = true
    elsif
      answer = false
  end
end
def alphabetizer(word)
  userword = word
  splitword = userword.split('')
  alphabetizedsplitword = splitword.sort
  return alphabetizedsplitword
end
end