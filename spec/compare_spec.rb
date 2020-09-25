require('compare')
require 'rspec'

describe ('Compare') do
  test= Compare.new()
  word = "tea"
  otherword = "tea"
  it('compares letters in a word') do
    expect(test.wordcompare(word,otherword)).to(eq(true))
  end
end