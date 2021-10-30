class PigLatinizer

    def to_pig_latin(word)
      letters = word.split("") 
      if letters.size > 1
        if vowel?(letters[0])
            letters == vowel?(letters[0])
            letters << "way" 
        else
        until vowel?(letters[0]) 
          letters << letters.shift
        end 
        letters  << "ay"
        end 
    else
        letters == vowel?(letters[0])
        letters << "way" 
      end
      letters.join
    end
  
    def piglatinize(text)
      words = text.split(" ")
      words.map! {|word| to_pig_latin(word)}
      words.join(" ")
    end
  
    def vowel?(letter)
      letter = letter.downcase
      letter == "o" || letter == "e" || letter == "a" || letter == "i" || letter == "u"
    end
  end