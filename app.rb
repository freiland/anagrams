require ('./lib/anagram')

puts('Welcome to anagram test!')
puts('Enter your first word or phrase:')
string_one = gets.chomp()
puts('Enter your second word or phrase:')
string_two =gets.chomp()


new_ex = Anagram.new(string_one, string_two)

new_ex.check?()

 

