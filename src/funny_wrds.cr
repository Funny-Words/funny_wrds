require "json"

module FW 
    VERSION = "0.1.1"
    class FunnyWords
	    @words                      : JSON::Any
        property path_to_words      : String

        def initialize(@path_to_words)
    	    @words = File.open(@path_to_words) { |file| JSON.parse(file) }
	    end

        def get_words(n = 1)
            @words.as_a.sample(n)
        end

        def get_concatenated_words()
            "#{@words.as_a.sample}#{@words.as_a.sample}"
        end
    end
end