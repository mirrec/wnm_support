class Array
  def halved
    half = (size.to_f / 2).round
    [first(half), drop(half)]
  end

  alias_method :split_to_half, :halved
end
