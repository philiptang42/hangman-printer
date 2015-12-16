def print_puzzle(word, guesses = [])
  underscore = "_" * word.length
  if word.include?(" ")
    space = word.index(" ")
    underscore[space] = " "
  end

  guesses.each do |guess|
    if word.include?(guess)
      space = word.index(guess)
      underscore[space] = guess
    end
  end
  underscore
end

puts print_puzzle("triangle", ['t', 's', 'g'])
