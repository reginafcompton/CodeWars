def longest(s1, s2):
  char_arr = set(s1 + s2)

  return "".join(sorted(char_arr))
