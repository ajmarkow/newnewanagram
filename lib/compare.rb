require 'rspec'

class Compare 
  def makewordsconsistent(word)
  downcasedword = word.downcase
  return downcasedword
  end
    def wordcompare(word,otherword)
      puts "input #{word} and #{otherword}"
      if word == otherword
        answer = true
      elsif 
        answer = false
      end
      return answer
    end
    def is_a_word(input)
      if input.include?(/\w+[aeiou]/)
        answer = true
        return answer
      elsif
        answer = false
        return answer
    end
    return answer
  end
  def alphabetizer(word)
    userword = word
    splitword = userword.split('')
    alphabetizedsplitword = splitword.sort
    return alphabetizedsplitword
  end
end