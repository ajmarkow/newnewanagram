require("compare")
require "rspec"

describe ("wordcompare") do
  first_test = Compare.new("tea", "tea")
  it("compares letters in a word") do
    expect(first_test.wordcompare()).to(eq(true))
  end

  describe ("is_a_word") do
    test = Compare.new("tea", "tea")
    testword = "mork"
    it("checks for vowels and returns true if there are any") do
      expect(test.is_a_word(testword)).to(eq(true))
    end
  end

  describe ("alphabetizer") do
    test = Compare.new("tea", "cba")
    test.alphabetizer
    it("alphabetizes word") do
      expect(test.word).to(eq(["a", "e", "t"]))
      expect(test.otherword).to(eq(["a", "b", "c"]))
    end
  end
end
describe ("makewordsconsistent") do
  test = Compare.new("TEA", "TEA")
  test.makewordsconsistent()
  it("downcases words") do
    expect(test.word()).to((eq("tea")))
  end
end

describe ("antigramtest") do
  test = Compare.new("pancake", "go")
  other = Compare.new("car", "cake")
  test.alphabetizer()
  other.alphabetizer()
  it("checks if any characters match") do
    expect(test.antigram_test()).to(eq("They are antigrams and share no letters."))
    expect(other.antigram_test()).to(eq("They share some letters in common.  They share [\"a\", \"c\"]"))
  end
end

describe ("splitasentence") do
  test = Compare.new("cat", "cat")
  test.sentence = "hello this is a sentence"
  it("removes spaces between words") do
    expect(test.splitasentence(test.sentence)).to(eq(["hello", "this", "is", "a", "sentence"]))
  end
end
