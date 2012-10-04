class Integer
  def to_b
    !self.zero?
  end

  alias_method :to_bool, :to_b
end

class TrueClass
  def to_b
    self
  end

  alias_method :to_bool, :to_b
end

class FalseClass
  def to_b
    self
  end

  alias_method :to_bool, :to_b
end

class NilClass
  def to_b
    false
  end

  alias_method :to_bool, :to_b
end
