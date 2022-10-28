# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums, target)
  nums.each_with_index do |value, i|
    ((i + 1)...nums.length).each do |j|
      return [i, j] if nums[i] + nums[j] == target
    end
  end
end

nums = [2,7,11,15]
target = 9
p two_sum(nums, target)

nums = [3,2,4]
target = 6
p two_sum(nums, target)

nums = [3,3]
target = 6
p two_sum(nums, target)


# def two_sum(nums, target)
#   dict = {}
#   nums.each_with_index do |n, i|
#     if dict[target - n]
#       return dict[target - n], i
#     end
#     dict[n] = i
#   end
# end

# store each value in the array into hash called dict, which the number is the key and the index is the value
# if dict[target - n] exist, that means n + [target - n] = target is a truth
# then we can return dict[target - n], i
