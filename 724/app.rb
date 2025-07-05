# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
  index = 0
  left_sum = 0
  right_sum = nums[1..nums.length].sum

  return index if left_sum - right_sum == 0
  index += 1

  nums[1..(nums.length-1)].each do |num|
    left_sum += nums[index-1]
    right_sum -= nums[index]

    return index if left_sum - right_sum == 0
    index += 1
  end

  return -1
end


nums = [1,7,3,6,5,6]
# nums = [1,2,3]
# nums = [2,1,-1]
nums = [-1,-1,0,1,1,0]

pp pivot_index(nums)