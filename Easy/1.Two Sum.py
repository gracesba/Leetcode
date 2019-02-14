1. Two Sum
Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution.
Example:
Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].
UPDATE (2016/2/13):
The return format had been changed to zero-based indices. Please read the above updated description carefully.

class Solution(object):
    def twoSum(self, target, nums):
        if len(nums) < 2:
            return None
        for i in range(len(nums)):
            for j in range(i + 1, len(nums)):
                if nums[i] + nums[j] == target:
                    return [i, j]

class Solution(object):
    def twoSum(self, target, nums):
        dic = dict{}
        for i in range(len(nums)):
            dic[nums[i]] = i
        for i in range(len(nums)):
            index1 = i
            index2 = dic[target - nums[i]]
            if index2:
                return index1, index2