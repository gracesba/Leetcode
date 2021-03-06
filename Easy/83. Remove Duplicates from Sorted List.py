# 83. Remove Duplicates from Sorted List
# Given a sorted linked list, delete all duplicates such that each element appear only once.

# For example,
# Given 1->1->2, return 1->2.
# Given 1->1->2->3->3, return 1->2->3.

class ListNode(object):
	def __init__(self, x):
		self.val = x
		self.next = None


class Solution(object):
	def deleteDuplicates(self, head):
		"""
        :type head: ListNode
        :rtype: ListNode
        """
        cur = head
        while cur:
        	while cur.next and cur.next.val = cur.val:
        		cur.next = cur.next.next 	#skip duplicated node
        	cur = cur.next	# move to next node
        return head