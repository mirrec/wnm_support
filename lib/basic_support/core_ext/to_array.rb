class Integer
  def to_a
    Array.wrap(self)
  end
end

class String
  def to_a
    Array.wrap(self)
  end
end