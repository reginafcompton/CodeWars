def find_next_square(sq)
  return -1 if is_perfect?(sq) == false
  sq += 1
  until is_perfect?(sq)
    sq += 1
  end
  return sq
end

def is_perfect?(n)
  true_sq = Math.sqrt(n)
  round_sq = Math.sqrt(n).to_i
  true_sq - round_sq == 0 ? true : false
end

p find_next_square(9)
