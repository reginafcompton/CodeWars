def get_sum(a, b):
  start = a if a < b else b
  stop = b + 1 if a < b else a + 1

  range_list = range(start, stop, 1)
  return sum(range_list)


