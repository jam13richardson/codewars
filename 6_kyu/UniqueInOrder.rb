def unique_in_order(iterable)
  if iterable == []
    return iterable
  elsif iterable.is_a?(String)
    iterable.chars.chunk { |x| x }.map(&:first)
  elsif iterable.is_a?(Array)
    iterable.chunk { |x| x }.map(&:first)
  else
    raise ArgumentError, "Unsupported iterable type"
  end
end
