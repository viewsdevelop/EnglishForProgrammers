# Define a Hash of several terms.

nouns = {
  "time" => "vez",
  "year" => "año",
  "man" => "hombre",
  "day" => "día",
  "thing" => "cosa"
}

# Define a method to neatly compare Term with Guess

def test(nouns, term, guess)
  unless guess == nouns[term]
    puts `say "Incorrect! Guess again.
    What is the Spanish translation of the word: #{term}?"`
  end
end

# Select one random English Term

term = nouns.keys.sample

# Prompt the User for an equivalent Spanish term.

puts `say "What is the Spanish translation of the word: #{term}?"`

guess = gets.chomp.downcase

# Begin Loop to Continue Prompting User for Correct Answer

until guess == nouns[term]
  test(nouns, term, guess)
  guess = gets.chomp.downcase
end

# Final Message to User

puts `say "Great job! You now know the Spanish translation of the English
word: '#{term}'."`
