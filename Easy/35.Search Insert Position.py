# 35. Search Insert Position

# Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

# You may assume no duplicates in the array.

# Here are few examples.
# [1,3,5,6], 5 → 2
# [1,3,5,6], 2 → 1
# [1,3,5,6], 7 → 4
# [1,3,5,6], 0 → 0


class Solution():
	def searchInsert(self, nums, target):
		"""
        :type nums: List[int]
        :type target: int
        :rtype: int
        """
        return len([x for x in nums if x < target])



class Solution():
	def searchInsert(self, nums, target):	# this doesn't work
		"""
        :type nums: List[int]
        :type target: int
        :rtype: int
        """
        first, last = 0, len(nums) -1
        if target < nums[0]:
			return 0
		if target > nums[last]:
			return last 
		while first < last:
	        m = (first + last)/2
	        if nums[m] == target:
	        	return m
	        if nums[m] < target:
	        	first = m + 1
	        if nums[m] > target:
	        	last = m
	    return first



