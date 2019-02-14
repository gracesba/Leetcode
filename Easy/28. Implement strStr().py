 
# 28. Implement strStr()

# Implement strStr().

# Returns the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.


class Solution():   
	def strStr(self, haystack, needle):    # time complexity is O(n*m)
		"""
        :type haystack: str
        :type needle: str
        :rtype: int
        """

        for i in range(len(haystack) - len(needle) + 1):
        	if haystack[i: i + len(needle)] == needle:
        		return i 
        return -1

class Solution():
        def strStr(self, haystack, needle): 
        """
        :type haystack: str
        :type needle: str
        :rtype: int
        """  
        return haystack.find(needle)