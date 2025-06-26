# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
    index_s = 0
    index_t = 0
    res = ""
    
    t[index_t..].each_char do |char_t|

        if s[index_s] == char_t
            res << char_t
            index_s += 1
            index_t += 1
        else
            index_t += 1
        end
    end
    res == s
end

s = "abc"
t = "ahbgdc"

s = "axc"
t = "ahbgdc"

s = "acb"
t = "ahbgdc"

s = "ab"
t = "baab"
#false

pp is_subsequence(s, t)