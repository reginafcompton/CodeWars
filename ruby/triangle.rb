def isTriangle(a,b,c)
  a + b > c && b + c > a && c + a > b ? true : false
end

p isTriangle(7,2,2)