require ('rspec')
require ('anagram')

describe ('anagrams') do 

  it('return true if the inputs are an anagram, false if they are not ') do
    new_ana = Anagram.new('test', 'test')
    expect(new_ana.check?()).to(eq(true))
  end

  it('return true if both inputs contain a vowel, false if one or both have no vowels') do
    new_ana = Anagram.new('vowel', 'nvwl')
    expect(new_ana.vowel?()).to(eq('enter a word!'))
  end
end
