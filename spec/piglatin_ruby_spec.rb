require('rspec')
require('piglatin_ruby')

describe('piglatin') do
  it('adds "ay" to the end of a word') do
    piglatin("elephant").should(eq("elephantay"))
  end
  it('moves the first letter to the end and adds "ay" if first letter is a consonant') do
    piglatin("candy").should(eq("andycay"))
  end
  it('moves any consonants at beginning of the word to the end and adds "ay"') do
    piglatin("schedule").should(eq("eduleschay"))
  end
  it('moves "qu" at beginning of the word to the end and adds "ay"') do
    piglatin("quest").should(eq("estquay"))
  end
end
