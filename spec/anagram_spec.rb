require ('rspec')
require ('anagram')

describe ('anagram') do 

  it('return true if the inputs are an anagram, false if they are not ') do
    new_ana = Anagram.new('test', 'test')
    expect(new_ana.check?()).to(eq("You have an anagram!"))
  end

  it('return true if both inputs contain a vowel, false if they do not') do
    new_ana = Anagram.new('vowl', 'nvwl')
    expect(new_ana.vowel?()).to(eq(false))
  end

  it('return nothing if not an antigram, return you have an antigram if they do not') do
    new_ana = Anagram.new('hi', 'bye')
    expect(new_ana.anti()).to(eq('antigram'))
  end


  it('check to see if multi word input string is an antigram') do
    new_ana = Anagram.new('hi man', 'sup callz')
    expect(new_ana.multi_anti()).to(eq(' '))
  end

  it('check to see if multi word input string is an anagram') do
    new_ana = Anagram.new('hi man', 'nam ih')
    expect(new_ana.multi_anagram()).to(eq('anagram!'))
  end

  it('checks to see if a multi string input has vowels') do
    new_ana = Anagram.new('ho', 'mom')
    expect(new_ana.multi_vowel()).to(eq(true))
  end

end
