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
        answer =input.match (/[aeiou]/)
        if answer = nil
          return false
        else 
          return true
        end
    end

  def alphabetizer(word)
    userword = word
    splitword = userword.split('')
    alphabetizedsplitword = splitword.sort
    return alphabetizedsplitword
  end

  def printresults
    puts
  end
end