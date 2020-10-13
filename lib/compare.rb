require "rspec"

class Compare
  attr_accessor(:word, :otherword, :sentence)

  def initialize(word, otherword)
    @word = word
    @otherword = otherword
    @sentence = sentence
  end

  def makewordsconsistent()
    self.word = self.word.gsub(/\s+/, "")
    self.otherword = self.otherword.gsub(/\s+/, "")
    self.word = self.word.downcase()
    self.otherword = self.otherword.downcase()
  end

  def wordcompare()
    puts "input #{word} and #{otherword}"
    if self.word == self.otherword
      return true
    elsif self.word != self.otherword
      return false
    end
  end

  def is_a_word(input)
    answer = input.match (/[aeiou]/)
    if answer == nil
      return false
    else
      return true
    end
  end

  def alphabetizer()
    self.word = self.word.split("")
    self.otherword = self.otherword.split("")
    self.word = self.word.sort()
    self.otherword = self.otherword.sort()
  end

  def antigram_test()
    intersection = self.word.&(self.otherword)
    if intersection == []
      return result = "They are antigrams and share no letters."
    else
      return result = "They share some letters in common.  They share #{intersection}"
    end
    return result
  end

  def splitasentence(sentence)
    splitsentence = sentence.split(" ")
    return splitsentence
  end
end
