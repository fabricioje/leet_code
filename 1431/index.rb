# def kids_with_candies(candies, extra_candies)
#     array_bol = []
#     m = candies.max

#     candies.each do |candy|
#        array_bol.push(candy + extra_candies >= m ? true : false)
#     end

#     array_bol
# end

#SOLUÇÃO SIMPLES
def kids_with_candies(candies, extra_candies)
    max_candies = candies.max
    candies.map { |candy| candy + extra_candies >= max_candies }
end

candies = [2,3,5,1,3]
extra_candies = 3

candies = [4,2,1,1,2]
extra_candies = 1

candies = [12,1,12]
extra_candies = 10

pp kids_with_candies(candies, extra_candies)
