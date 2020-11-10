print "please enter the string you would like to encrypt:"
phrase = gets.chomp
print "please enter an integer to use as the shift factor:"
shift = gets.chomp.to_i

new_string_elements = []
alphabet  = ('a'..'z').to_a
character_split = phrase.split('')

character_split.each do |character|

	if alphabet.include?(character.downcase)
		placement = alphabet.index(character.downcase)
		new_placement = placement + shift 
		number_of_wraps = new_placement/26
		final_placement = new_placement-(26*number_of_wraps)
	end

	if character.match(/\p{Lower}/) #&& alphabet.include?(character)
		new_string_elements.push(alphabet[final_placement])
	elsif character.match(/\p{Upper}/) #&& alphabet.include?(character.downcase)
		new_string_elements.push(alphabet[final_placement].upcase)
	else
		new_string_elements.push(character)
	end
end	
		
new_string = new_string_elements.join()
puts "ciphered: #{new_string}"