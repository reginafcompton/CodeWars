def separate_liquids(glass)
  empty_glass = []
  return empty_glass if glass.empty? == true

  amounts_hash = make_hash(glass)
  amounts_hash.each do |key, value|
    value.times { empty_glass << key }
  end

  glass_width = glass[0].length
  empty_glass.each_slice(glass_width).to_a
end

def make_hash(glass)
  liquid_amounts = { "O" => 0, "A" => 0, "W" => 0, "H" => 0 }
  glass_flat_array = glass.flatten
  glass_flat_array.each do |el|
    liquid_amounts[el] += 1
  end
  liquid_amounts
end

p separate_liquids([['H', 'H', 'W', 'O'], ['H', 'H', 'W', 'O']])
p separate_liquids([])

