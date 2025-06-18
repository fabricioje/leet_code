def merge_alternately(word1, word2)
    result = ""
    i = 0
    max_length = [word1.length, word2.length].max

    while i < max_length
        result << word1[i] if i < word1.length
        result << word2[i] if i < word2.length
        i += 1
    end

    result
end

word1 = "ab", word2 = "pqrs"
pp merge_alternately(word1, word2)