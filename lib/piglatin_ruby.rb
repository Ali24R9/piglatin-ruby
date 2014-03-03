def piglatin(phrase)
  while is_consonant(phrase[0]) do
    if phrase[0] =~ /[qQ]/ && phrase[1] =~ /[uU]/
      phrase = phrase[2..-1] + phrase[0..1]
    else
      phrase = phrase[1..-1] + phrase[0]
    end
  end
  phrase + "ay" 
end

def is_consonant(letter)
  if letter =~ /[^aeiou]/
    true
  end
end

puts piglatin("elephant")
puts piglatin("candy")
puts piglatin("tray")
puts piglatin("schedule")
puts piglatin("quest")
