class Solution {
  double findMaxAverage(List<int> nums, int k) {
       var sum = 0;
    for (var i = 0; i < k; i++) {
      sum += nums[i];
    }

    var maxSum = sum;
    for (var i = k; i < nums.length; i++) {
      sum += nums[i] - nums[i - k];

      if (maxSum < sum) {
        maxSum = sum;
      }
    }
    
    return maxSum / k;
  }
}