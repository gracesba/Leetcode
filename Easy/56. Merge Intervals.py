# 56. Merge Intervals

# Given a collection of intervals, merge all overlapping intervals.

# For example,
# Given [1,3],[2,6],[8,10],[15,18],
# return [1,6],[8,10],[15,18].

# Definition for an interval.
# class Interval(object):
#     def __init__(self, s=0, e=0):
#         self.start = s
#         self.end = e

class Solution(object):
    def merge(self, intervals):
        """
        :type intervals: List[Interval]
        :rtype: List[Interval]
        """
        out = []
        for pair in sorted(intervals, key=lamda x: x.start):
        	if pair.start <=  out[-1].end:
        		out[-1].end = max(pair.end, out[-1].end)  # there is a overlap
        	else:
        		out.append(pair)
        return out