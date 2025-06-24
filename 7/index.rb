require 'byebug'

def reverse(x)
  sign = x.positive? ? 1 : -1
  rev = 0
  x = x.abs

  while x.positive?
    mod = x % 10
    x /= 10
    rev = rev * 10 + mod
    return 0 if rev > 2**31 - 1
  end

  sign * rev
end
x = 120

pp reverse(x)
