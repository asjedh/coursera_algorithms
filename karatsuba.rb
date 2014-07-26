#there's a bug in this... doesn't work for some numbers

def karatsuba(x,y)
  if x < 10 || y < 10
    return x * y
  else
    x_arr = x.to_s.split(//)
    y_arr = y.to_s.split(//)

    n = [x_arr.length, y_arr.length].max
    n2 = (n / 2.0).ceil

    a, b = x_arr.each_slice(n2).to_a
    c, d = y_arr.each_slice(n2).to_a

    ac = karatsuba(a.join.to_i, c.join.to_i)
    bd = karatsuba(b.join.to_i, d.join.to_i)
    ab_cd = karatsuba(a.join.to_i + b.join.to_i,
      c.join.to_i + d.join.to_i)

    return ((10 ** ((n/2)*2)) * ac) +
      ((10 ** (n/2)) * (ab_cd - ac - bd) ) +
      bd
  end
end

p karatsuba(10,10)
p karatsuba(100,100)
p karatsuba(250,250)
p karatsuba(101,101)
p karatsuba(1000,1000)
