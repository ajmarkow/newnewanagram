require('alphabetize')

describe ('Alphabetize') do
  it('does this') do
    expect(alphabetizer([z,y,x,c,b,a])).to(eq([a,b,c,x,y,z]))
  end
end