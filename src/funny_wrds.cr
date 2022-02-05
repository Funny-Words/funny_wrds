require "json"

class FunnyWords
	getter path	 : String
	@file 	     : Array(JSON::Any)

  def initialize(@path)
    @file = File.open(@path) { |file| JSON.parse(file) }.as_a
  end

  def get_words(n : Int32 = 1)
    @file.sample(n)
  end

  def get_concatenated_words
    "#{@file.sample} #{@file.sample}"
  end
end
