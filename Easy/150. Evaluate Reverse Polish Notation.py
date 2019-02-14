# Evaluate the value of an arithmetic expression in Reverse Polish Notation.

# Valid operators are +, -, *, /. Each operand may be an integer or another expression.

# Some examples:
#   ["2", "1", "+", "3", "*"] -> ((2 + 1) * 3) -> 9
#   ["4", "13", "5", "/", "+"] -> (4 + (13 / 5)) -> 6


  class Solution(object):
    def evalRPN(self, tokens):
        """
        :type tokens: List[str]
        :rtype: int
        """
        stack = []
        for w in tokens:
        	if w not in ['+', '-', '*', '/']:
        		stack.append(w)
        	else:
        		r, l = stack.pop(), stack.pop()
        		if w == '+':
        			stack.append(l+r)
        		elif w == '-':
        			stack.append(l-r)
        		elif w == "*":
        			stack.append(l*r)
        		else:
        			stack.append(int(float(l)/r))
        return stack.pop()
