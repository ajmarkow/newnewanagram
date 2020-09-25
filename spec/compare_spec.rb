require('compare')
require 'rspec'

describe ('Compare') do
  it('compares letters in a word') do
    expect(wordcompare(word,otherword)).to(eq(true))
  end
end