class String
  def max_words(word_limit = 2, ending = '...')
    words = self.split(/\s/)
    if words.size > word_limit
      words[0..(word_limit-1)].join(" ") + ending
    else
      self
    end
  end
end