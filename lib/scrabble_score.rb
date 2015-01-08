class String
  define_method(:scrabble_score) do

    # Create hash with values of Scrabble letter scores.
    score_one_array = ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"]
    score_two_array = ["d", "g"]
    score_three_array = ["b", "c", "m", "p"]
    score_four_array = ["f", "h", "v", "w", "y"]
    score_eight_array = ["j", "x"]
    score_ten_array = ["q", "z"]
    letter_scores = {}
    letter_scores.store("k", 5)
    score_one_array.each() do |letter|
        letter_scores.store(letter, 1)
    end
    score_two_array.each() do |letter|
        letter_scores.store(letter, 2)
    end
    score_three_array.each() do |letter|
        letter_scores.store(letter, 3)
    end
    score_four_array.each() do |letter|
        letter_scores.store(letter, 4)
    end
    score_eight_array.each() do |letter|
        letter_scores.store(letter, 8)
    end
    score_ten_array.each() do |letter|
        letter_scores.store(letter, 10)
    end

    # Calculates score from input word.

    split_word = self.downcase().split("")
    score = 0
    split_word.each() do |letter|
      score = score + letter_scores.fetch(letter)
    end
    score


  end
end
