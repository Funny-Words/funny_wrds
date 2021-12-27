require "json"

class FunnyWords
	getter path		  : String
	property file 	: JSON::Any

  def initialize(@path)
    @file = File.open(@path) { |file| JSON.parse(file) }
  end

  def get_words(n = 1)
    @file.as_a.sample(n)
  end

  def get_concatenated_words
    "#{@file.as_a.sample}#{@file.as_a.sample}"
  end
end
