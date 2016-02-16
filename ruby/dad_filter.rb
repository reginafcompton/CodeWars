def dad_filter(string)
  string.squeeze!(",")
  string.strip! if string[-1] == " "
  string.chomp!(",") if string[-1] == ","
  string
end

p dad_filter("i, don't believe this round earth, show me evadence!!")