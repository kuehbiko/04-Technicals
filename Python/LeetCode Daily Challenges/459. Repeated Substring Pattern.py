'''
Given a string s, check if it can be constructed by taking a substring of it and appending multiple copies of the substring together.

 

Example 1:

Input: s = "abab"
Output: true
Explanation: It is the substring "ab" twice.
Example 2:

Input: s = "aba"
Output: false
Example 3:

Input: s = "abcabcabcabc"
Output: true
Explanation: It is the substring "abc" four times or the substring "abcabc" twice.
 

Constraints:

1 <= s.length <= 10^4
s consists of lowercase English letters.
'''
class Solution:
    def repeatedSubstringPattern(self, s: str) -> bool:
        #approach:
        # if a string is made up of repeated substrings, then the exact string will be present in the middle of s+s
        # eg. s=abcbac so s+s=abcabcabcabc; original string s is in the middle
        # must: remove the first and last letters to ensure we are getting the string in the MIDDLE of s+s and not the original s
        
        test_str = s+s # concatenate string to itself
        test_str = test_str[1:-1] # remove first and last letters
        return s in test_str # check if s exists in the middle
