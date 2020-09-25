class Anagram 

  def initialize (word_one, word_two)
    @word_one = word_one
    @word_two = word_two
  end


  def check?()
    arr_one = []
    arr_two = []
    up_one = @word_one.upcase.split(//).sort
    up_two = @word_two.upcase.split(//).sort
    
    up_one == up_two
  end

  def vowel?()
    @word_one.include?('aeiou')
  end
end
  
    