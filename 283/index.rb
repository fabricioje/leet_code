def move_zeroes(nums)
    last_non_zero_index = 0

  # Move os elementos não-zero para frente
  nums.each_with_index do |num, i|
    if num != 0
      nums[last_non_zero_index] = num
      last_non_zero_index += 1
    end
  end

  # Preenche o resto com zeros
  (last_non_zero_index...nums.length).each do |i|
    nums[i] = 0
  end
end

nums = [0,1,0,3,12]
nums = [0]
nums = [0,0,1]

pp move_zeroes(nums)