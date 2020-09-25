require ('rspec')
require ('anagram')

describe ('anagrams#word_check') do 

  it('return true if the inputs are an anagram, false if they are not ') do
    new_ana = Anagram.new('test', 'test')
    expect(new_ana.check?()).to(eq(true))
  end
end
