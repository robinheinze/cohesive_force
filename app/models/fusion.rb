class Fusion
  attr_accessor :first_word, :second_word

  def initialize(first_word, second_word)
    @first_word = first_word
    @second_word = second_word
  end

  def execute
    compound_word = first_word + second_word
    vowels = compound_word.split("").select { |l| l.match(/[aeiouy]/) }
    consonants = compound_word.split("").select { |l| l.match(/[^aeiouy]/) }

    compound_array = vowels + consonants
    new_word = []
    while compound_array.length > 1 do
      new_word << compound_array.shift
      new_word << compound_array.pop
    end
    new_word += compound_array
    new_word.join
  end

end
