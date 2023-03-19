def spin_words(string)

  string.split.map { |s| s.length >= 5 ? s.reverse : s }.join ' '
end
