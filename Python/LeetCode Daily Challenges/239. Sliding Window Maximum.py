'''
You are given an array of integers nums, there is a sliding window of size k which is moving from the very left of the array to the very right. You can only see the k numbers in the window. Each time the sliding window moves right by one position.

Return the max sliding window.

 

Example 1:

Input: nums = [1,3,-1,-3,5,3,6,7], k = 3
Output: [3,3,5,5,6,7]
Explanation: 
Window position                Max
---------------               -----
[1  3  -1] -3  5  3  6  7       3
 1 [3  -1  -3] 5  3  6  7       3
 1  3 [-1  -3  5] 3  6  7       5
 1  3  -1 [-3  5  3] 6  7       5
 1  3  -1  -3 [5  3  6] 7       6
 1  3  -1  -3  5 [3  6  7]      7
Example 2:

Input: nums = [1], k = 1
Output: [1]
 

Constraints:

1 <= nums.length <= 105
-104 <= nums[i] <= 104
1 <= k <= nums.length
'''

class Solution:
    def maxSlidingWindow(self, nums: List[int], k: int) -> List[int]:

        answer_list = []
        dq = deque()

        for idx,val in enumerate(nums):
            
            while dq and dq[0] < idx-k+1: #dq not empty and dq[0] outside window
                dq.popleft() #remove expired dq[0]
            
            while dq and nums[dq[-1]] < val: #dq not empty and dq[-1] smaller than new val
                dq.pop() #remove old max val and replace with new max val
            
            #reach this step if dq IS empty
            dq.append(idx)

            if idx >= k-1: #if sliding window is full, we have the local max
                answer_list.append(nums[dq[0]]) #go ahead and append local max to answer_list
        
        return answer_list
