# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)
  
  higher = []
  res = 0

  gain.each do |n|
    res = res + n
    higher << res 
  end

  return higher.max.positive? ? higher.max : 0

end


gain = [-5,1,5,0,-7]
#return 1

# gain = [-4,-3,-2,-1,4,3,2]
#return 0

pp largest_altitude(gain)