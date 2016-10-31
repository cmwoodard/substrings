def substrings(phrase, dictionary)
	word_hash = Hash.new(0)
	phrase = phrase.split
	#initializes the hash
	dictionary.each{|element| word_hash["#{element}"]=0}
	
	dictionary.each{|dic_element|
		phrase.each{|phrase_element|
		#puts "#{dic_element} vs #{phrase_element.downcase} = #{(phrase_element.downcase).include? dic_element}"
			word_hash["#{dic_element}"]+=1 if (phrase_element.downcase).include? dic_element
		}
	}
	word_hash.sort
	word_hash.each{|one, two| puts "#{one}: #{two}" if two>0}
	word_hash.sort
end

words = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", words)