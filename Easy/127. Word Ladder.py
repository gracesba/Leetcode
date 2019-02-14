Given two words (beginWord and endWord), and a dictionary's word list, find the length of shortest transformation sequence from beginWord to endWord, such that:

Only one letter can be changed at a time.
Each transformed word must exist in the word list. Note that beginWord is not a transformed word.
For example,

Given:
beginWord = "hit"
endWord = "cog"
wordList = ["hot","dot","dog","lot","log","cog"]
As one shortest transformation is "hit" -> "hot" -> "dot" -> "dog" -> "cog",
return its length 5.


class Solution(object):
    def ladderLength(self, beginWord, endWord, wordList):
        """
        :type beginWord: str
        :type endWord: str
        :type wordList: List[str]
        :rtype: int
        """
        length = 2
        font, end = set([beginWord]), set([endWord])
        while font:
        	font = wordList & set([word[:index] + ch + word[index+1:]] for word in font
        			for index in range(len(word)) for ch in 'abcdefghijklmnopqrstuvwxyz')

        	if font & end:
        		return length
        	length += 1

        	if len(font) > len(end):
        		font, end = end, font
        	wordList -= font
        return 0