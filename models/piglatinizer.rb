class PigLatinizer

  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def pig_latin
    words = text.split(" ", ". ")
    consonants = words.scan(/[bcdfghjklmnpqrstvwxyz]/)
    vowels = words.scan(/[aeoui]/)

end
