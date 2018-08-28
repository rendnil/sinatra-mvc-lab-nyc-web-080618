require "pry"

class PigLatinizer

  def piglatinize(words)

    array_words = words.split(" ")
    final_array = [ ]
    array_words.each do |word|
      split_word = word.split(/([aeiouAEIOU])(.*)/)

      if split_word[0] == ""
        joined_word = word+"way"
        final_array << joined_word
      else
        joined_word = ((split_word.slice(1..split_word.length).join) + split_word[0]+ "ay")
        final_array << joined_word

      end

    end
    final_array.join(" ")

  end


end

#
words = PigLatinizer.new
 puts words.piglatinize("love")
#
# #binding.pry
