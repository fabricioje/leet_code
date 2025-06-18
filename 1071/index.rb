# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
  return "" unless str1 + str2 == str2 + str1
  len = gcd(str1.length, str2.length)
  str1[0...len]
end

def gcd(a, b)
  return a if b == 0
  gcd(b, a % b)
end

str1 = "ABCABC"
str2 = "ABC"

pp gcd_of_strings(str1, str2)