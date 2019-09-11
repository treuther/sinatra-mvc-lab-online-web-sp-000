# class PigLatinizer
#   def to_pig_latin(phrase)
#     words = phrase.split(" ")
#     words.collect {|w| piglatinize(w)}.join(" ")
#   end
#
#   def piglatinize(word)
#     parts_of_word = word.split(/([^aeiouAEIOU]*)([aeiouAEIOU]*)(.*)/)
#     # binding.pry
#     start = parts_of_word[1] # consonant cluster
#     rest = parts_of_word[2] + (parts_of_word[3] || "")
#     if start.length>0
#       "#{rest}#{start}ay"
#     else
#       "#{rest}way"
#     end
#   end
# end

class PigLatinizer

  def piglatinize_word(word)

    #words that start with a vowel
    if !consonant?(word[0])
      word = word + "w"
      #words start with 3 consonants
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
      #word starst with 2 consonants
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
      #word starts with 1 consonant
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end

  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def piglatinize(sentence)
    sentence.split.collect { |word| piglatinize_word(word) }.join(" ")
  end
end
