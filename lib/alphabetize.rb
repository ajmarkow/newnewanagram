class Alphabetize
attr_accessor(:word,:wordtocompare)

  def initialize(word,wordtocompare)
    @word = word
    @wordtocompare = wordtocompare
  end

  def alphabetizer(word)
    userword = word
    splitword = userword.split('')
    alphabetizedsplitword = splitword.sort
    return alphabetizedsplitword
  end
end