class String
  def is_integer?
    self.to_i > 0 && self.to_i.to_s == self
  end
end