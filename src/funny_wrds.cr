require "json"

class FunnyWords
  def open_file(path_to_file)
    @file : JSON::Any
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
