class PigLatinizer

  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def Pig_Latin
    words = text.split(" ")
    consonants = words.scan(/[bcdfghjklmnpqrstvwxyz]/)

end
