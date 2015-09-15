
def owl_pic(text)
  array = text.upcase.split("")
  array.select! { |x| ["8", "W", "T", "Y", "U", "I", "O", "A", "H", "X", "V", "M"].include?(x) }
  string = array.join("")
  p string + "''0v0''" + string.reverse
end

owl_pic("SDFJKLDFKS8wwwALDJF8439SJDFN394U0")