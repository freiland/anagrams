class Anagram 

  def initialize (word_one, word_two)
    @word_one = word_one
    @word_two = word_two
  end


  def check?()
    
    up_one = @word_one.upcase.split(//).sort
    
    up_two = @word_two.upcase.split(//).sort
    
    if (up_one == up_two)
      return ('You have an anagram!')
    else
      return ('no anagram')
    end
  end

  def vowel?()
     if ((@word_one.match(/[aeiou]/) == nil) || (@word_two.match(/[aeiou]/) == nil))
      return (false)
     else
      return (true)
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

 def multi_anti()
  
  up_one = @word_one.upcase.split(//).sort
  up_two = @word_two.upcase.split(//).sort
  
  arr = []
  two_arr = []
  
  up_one.each do |letter|
    if letter.match(/\w/)
      arr.push(letter)
    end 
  end

  up_two.each do |letter|
    if letter.match(/\w/)
      two_arr.push(letter)

    end   
  end

  if ((arr & two_arr) == [])
    return ('antigram')
  else
    return ('letter match')
  end
end

  def multi_anagram()
    up_one = @word_one.upcase.split(//).sort
    up_two = @word_two.upcase.split(//).sort
  
    arr = []
    two_arr = []
  
    up_one.each do |letter|
      if letter.match(/\w/)
        arr.push(letter)
      end 
    end

    up_two.each do |letter|
      if letter.match(/\w/)
        two_arr.push(letter)

      end   
    end

    if (arr == two_arr)
      return ('anagram!')
    else
      return ('no anagram, sorry')
    end
  end

  def multi_vowel()
    up_one = @word_one.upcase.split(//).sort
    up_two = @word_two.upcase.split(//).sort
  
    arr = []
    two_arr = []
  
    up_one.each do |letter|
      if letter.match(/\w/)
        arr.push(letter)
      end 
    end

    up_two.each do |letter|
      if letter.match(/\w/)
        two_arr.push(letter)

      end   
    end
    
    if ((arr.join("").scan(/aeiou/) == nil) || (two_arr.join("").scan(/aeiou/) == nil))
     return (arr.join("").scan(/aeiou/))
    else
     return true
    end
 end

end

