#only works with two numbers of same length
require 'pry'

def karatsuba(x,y)
  if x < 10 && y < 10
    return x * y
  else
    x_arr = x.to_s.split(//)
    y_arr = y.to_s.split(//)
    n = x_arr.length #since x and y are same length

    a = x_arr.slice(0, ( n / 2.to_f).ceil)
    b = x_arr.slice(( n / 2.to_f).ceil, n/2)
    c = y_arr.slice(0, ( n / 2.to_f).ceil)
    d = y_arr.slice(( n / 2.to_f).ceil, n/2)


    ac = karatsuba(a.join.to_i, c.join.to_i)
    bd = karatsuba(b.join.to_i, d.join.to_i)
    ab_cd = karatsuba(a.join.to_i + b.join.to_i,
      c.join.to_i + d.join.to_i)


    return ((10 ** n) * ac) +
      ((10 ** (n/2)) * (ab_cd - ac - bd) ) +
      bd
  end
end

p karatsuba(100,100)
