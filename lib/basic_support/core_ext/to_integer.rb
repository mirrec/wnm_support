class TrueClass
  def to_i
    1
  end

  alias_method :to_integer, :to_i
end

class FalseClass
  def to_i
    0
  end

  alias_method :to_integer, :to_i
end
