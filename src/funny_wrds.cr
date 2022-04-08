require "json"

class FunnyWords
	@file : Array(JSON::Any) | Array(String)

  def initialize(path : String)
    @file = File.open(path) { |file| JSON.parse(file) }.as_a
  end

  def initialize(@file : Array(String))
  end

  def get_words(n = 1)
    @file.sample(n).join(", ")
  end

  def get_concatenated_words
    @file.sample(2).join(", ")
  end
end
