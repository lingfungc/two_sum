# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums, target)
  # Create a repo which store num as key and index as value
  repo = {}
  # Iterate through nums array with num and index
  nums.each_with_index do |value, i|
    # If repo[target - value] exists, that means we find the 2 values, then we can find the indice from the repo
    if repo[target - value]
      # The value of repo[target - value] is the index of the first num, we can return both index as an array
      return repo[target - value], i
    end
    # We store the store num as key and index as value in the repo hash for every element
    repo[value] = i
  end
end

# Imagine the nums are people holding different number of balloons
# They will be assigned the each house arrording to their index, and putting their ballons on the top of the house
# Everytime, we check if target - number of balloons the next person holding
# If the result exist and there is an house having the same number of balloon on the top of it
# That means the target can be matched
# Then we return the house index existed and the index of the person that passing the test

# nums = [2,7,11,15]
# target = 9
# p two_sum(nums, target)

# nums = [3,2,4]
# target = 6
# p two_sum(nums, target)

# nums = [3,3]
# target = 6
# p two_sum(nums, target)

# def two_sum(nums, target)
#   nums.each_with_index do |value, i|
#     ((i + 1)...nums.length).each do |j|
#       return [i, j] if nums[i] + nums[j] == target
#     end
#   end
# end
