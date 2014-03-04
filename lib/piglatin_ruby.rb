def piglatin(phrase)
  if phrase[0] =~ /[yY]/
    phrase = phrase[1..-1] + phrase[0]
  elsif phrase[0] =~ /[qQ]/ && phrase[1] =~ /[uU]/
      phrase = phrase[2..-1] + phrase[0..1]
  else
    phrase.each_char do |x|
      if is_vowel(x) 
        break
      else
        phrase = phrase[1..-1] + phrase[0]
      end
    end
  end
  phrase + "ay" 
end

def is_vowel(letter)
  if letter =~ /[aeiouy]/
    true
  end
end


puts piglatin("elephant")
puts piglatin("candy")
puts piglatin("psychology")
puts piglatin("yours")
puts piglatin("quest")

# "cat".each_char do |i|
#   puts i+","
# end

