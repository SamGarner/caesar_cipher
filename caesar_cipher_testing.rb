print "please enter the string you would like to encrypt:"
phrase = gets.chomp.to_s
print "please enter a number to use as the shift factor:"
shift = gets.chomp.to_i

print "phrase: "
p phrase
print "shift: "
p shift

#first character, no a-z wrap:

# alphabet  = ('a'..'z').to_a
# character = phrase[0]
 new_string_elements = []
#p character

# if contains to make sure letter

# placement = alphabet.index(character)
# new_placement = placement + shift
# new_string_elements.push(alphabet[new_placement])
# new_string = new_string_elements.join()


# multiple characters
alphabet  = ('a'..'z').to_a
character_split = phrase.split("")

##### if placement + shift > 26 (involve modulo somehow for e.g. user input = 100)
##### subtract then and start from zero orrrr just -26 the approp # of times.
##### subtract 26 until new_placement < 26

### divide new_placement by 26 (integer) and subtract 26*result from new placement
### then shift

character_split.each do |character|
	if character.match(/\p{Lower}/) && alphabet.include?(character)
		placement = alphabet.index(character)
		new_placement = placement + shift
		new_string_elements.push(alphabet[new_placement])
	elsif character.match(/\p{Upper}/) && alphabet.include?(character.downcase)
		placement = alphabet.index(character.downcase)
		new_placement = placement + shift
		new_string_elements.push(alphabet[new_placement].upcase)
	else
		new_string_elements.push(character)
	end
end	
		
new_string = new_string_elements.join()
puts "ciphered: #{new_string}"