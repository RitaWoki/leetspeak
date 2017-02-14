require('rspec')
require('pry')

class String
  define_method(:leetspeak) do
    new_sentence = []
    self.split(" ").each do |word|
    new_letters = []
    word.split("").each do |letter|
      if letter == "e"
        new_letters.push(3)
        elsif letter == "o"
        new_letters.push(0)
        elsif letter == "I"
        new_letters.push(1)
        elsif letter == "s"
          if (new_letters.length == 0)
            new_letters.push("s")
          else
            new_letters.push("z")
          end
        else
        new_letters.push(letter)
      end
    end
    new_sentence.push(new_letters.join(""))
    end
    new_sentence.join(" ")
  end
end


# if letters.shift() == "s"
#   leet_word.shift()
#   leet_word.unshift("s")
# end
# leet_word = leet_word.join("")
# end
# end
