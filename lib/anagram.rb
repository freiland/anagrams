class Anagram 

  def initialize (word_one, word_two)
    @word_one = word_one
    @word_two = word_two
  end


  def check?()
    
    up_one = @word_one.upcase.split(//).sort
    
    up_two = @word_two.upcase.split(//).sort
    
    up_one == up_two
  end

  def vowel?()
     if (@word_two.match(/[aeiou]/) == nil)
      return ('enter a word!')
     end
  end
end
  
    