require ('./lib/anagram')

puts('Welcome to anagram test!')
puts('Enter your first word or phrase:')
string_one = gets.chomp()
puts('Enter your second word or phrase:')
string_two =gets.chomp()


new_ex = Anagram.new(string_one, string_two)
uno = string_one.split
dos = string_two.split

if (uno[1] || dos[1])
  if new_ex.multi_vowel() == false
    puts('Please enter a real word!')
  else
    puts(new_ex.multi_anagram())
  end
else 
  if new_ex.vowel?() == false
    puts('Enter a real word!')
  else
  puts(new_ex.check?())
end
end


 

