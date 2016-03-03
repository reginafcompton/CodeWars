#!/bin/env ruby
# encoding: utf-8

def rad_ladies(name)
  arr = name.split('')
  arr.delete_if { |x| (/\d*[13579]$/ =~ x) || (/[%$&$?@\/]/) =~ x }
  arr.join("").upcase
end

p rad_ladies("k?%35a&&/y@@@5599 m93753&$$$c$n///79u??@@%l?975$t?%5y%&$3$1!")