class Solution {
  int subarraySum(List<int> nums, int k) {
   Map<int, int> map = {0:1};
    int currentSum = 0;
    int totalSubArrays = 0;
    for (int i = 0; i < nums.length; i++) {
      currentSum += nums[i];
      int target = currentSum - k;

      if (map.containsKey(target)) {
        totalSubArrays += map[target]!;
      }

      map[currentSum] = (map[currentSum] ?? 0) + 1;
    }
    return totalSubArrays;
  }
}