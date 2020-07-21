# take in string

# string to a number??

(a...z).to_a ?
find index and then add/subtract the shift factor
need to use the index to get case so can upcase when needed?

# output shifted stringArrArr

print "please enter the string you would like to encrypt:"
phrase = gets.chomp.to_s
print "please enter a number to use as the shift factor:"
shift = gets.chomp.to_i

length or each to know how many characters to replace
if (a...z) to make sure only shifting letters

#first character, no a-z wrap:

alphabet  = (a..z).to_a
character = phrase[0]

placement = alphabet.index(character)
new_placement = placement + shift
new_string.push(alphabet[new_placement])

print new_string

each_with_index >> output index number then add to it?

if loop -26 to make sure in range
