require "json"

class FunnyWords
  def initialize()
    @file : JSON::Any
  end

  def open_file(path_to_file)
    @file = File.open(path_to_file) { |file| JSON.parse(file) }
    self
  end

  def get_words(n = 1)
    @file.as_a.sample(n)
  end

  def get_concatenated_words
    "#{@file.as_a.sample}#{@file.as_a.sample}"
  end
end
