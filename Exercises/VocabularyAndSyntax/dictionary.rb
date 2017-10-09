# Define a Hash of several terms.

nouns = {
  "vez" => "time",
  "año" => "year",
  "hombre" => "man",
  "día" => "day",
  "cosa" => "thing"
}

# Define a method to neatly compare Term with Guess

def test(nouns, term, guess)
  unless guess == nouns[term]
    puts "Incorrect! Guess again."
  end
end

# Select one random Spanish Term

term = nouns.keys.sample

# Prompt the User for an equivalent English term.

puts "What is the English equivalent of #{term}?"

guess = gets.chomp.downcase

# Begin Loop to Continue Prompting User for Correct Answer

until nouns[term] == guess
  test(nouns, term, guess)
  guess = gets.chomp.downcase
end

# Final Message to User

puts "Great job! You now know the meaning of the Spanish word '#{term}'."
