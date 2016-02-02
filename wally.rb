def wheres_wally(string)
   if /Wally[[:alnum:]]/.match(string) || /[[:alnum:]]Wally/.match(string) || /[[:punct:]]Wally/.match(string)
      -1
   elsif /Wally[[:punct:]]/.match(string) || /Wally/.match(string)
      string.index("Wally")
   else
      -1
   end
end

p wheres_wally("I am ffWally,")

