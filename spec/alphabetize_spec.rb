require('alphabetize')
require('rspec')


describe ('alphabetizer') do
  it('sorts letters based upon order in the alphabet') do
    word = 'zyxcba'
    wordtocompare = 'abcxyz'
    testobject = Alphabetize.new(word, wordtocompare)
    expect(testobject.alphabetizer(word)).to eq(['a','b','c','x','y','z'])
  end
end