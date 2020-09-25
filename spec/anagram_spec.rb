require ('rspec')
require ('anagram')

describe ('anagrams') do 

  it('return true if the inputs are an anagram, false if they are not ') do
    new_ana = Anagram.new('test', 'test')
    expect(new_ana.check?()).to(eq(true))
  end

  it('return true if both inputs contain a vowel, false if one or both have no vowels') do
    new_ana = Anagram.new('vowl', 'nvwl')
    expect(new_ana.vowel?()).to(eq('enter a word!'))
  end

  it('return true if the words have letters, false if they are an antigram') do
    new_ana = Anagram.new('hi', 'bye')
    expect(new_ana.anti()).to(eq('antigram'))
  end


  it('check to see if multi word input string is an antigram') do
    new_ana = Anagram.new('hi man', 'sup callz')
    expect(new_ana.multi_anti()).to(eq('letter match'))
  end

  it('check to see if multi word input string is an anagram') do
    new_ana = Anagram.new('hi man', 'sup callz')
    expect(new_ana.multi_anagram()).to(eq('letter match'))
  end
end
