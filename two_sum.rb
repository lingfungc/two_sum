# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums, target)
  index = []
  for i in 0...nums.length do
    for j in (i + 1)...nums.length do
      index = [i, j] if nums[i] + nums[j] == target
    end
  end
  index
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
