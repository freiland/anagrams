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
     if ((@word_one.match(/[aeiou]/) == nil) || (@word_two.match(/[aeiou]/) == nil))
      return ('enter a word!')
     else
      return true
     end
  end

  def anti()
    up_one = @word_one.upcase.split(//).sort

    up_two = @word_two.upcase.split(//).sort

    if ((up_one & up_two) == [])
      return ('antigram')
    else
      return ('letter match')
    end
 end

 def multi_anagram()
  up_one = @word_one.upcase.split(//).sort

  #up_two = @word_two.upcase.split(//).sort
 end


  
end



  
    