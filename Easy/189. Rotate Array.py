Rotate an array of n elements to the right by k steps.

For example, with n = 7 and k = 3, the array [1,2,3,4,5,6,7] is rotated to [5,6,7,1,2,3,4].


class Solution(object):
    def rotate(self, nums, k):
        """
        :type nums: List[int]
        :type k: int
        :rtype: void Do not return anything, modify nums in-place instead.
        """
        n = len(nums)
        while k > 0 and n > 1:
        	nums = nums[n-k :] + nums[: n-k]


class Solution(object):
    def rotate(self, nums, k):
        """
        :type nums: List[int]
        :type k: int
        :rtype: void Do not return anything, modify nums in-place instead.
        """
       	temp = range(nums)
       	for i in range(len(nums)):
       		temp[ (i + k) & len(nums)] = nums[i]
       	for j in range(len(nums)):
       		nums[j] = temp[j]