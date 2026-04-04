class Solution {
  int removeDuplicates(List<int> nums) {
    if(nums.length <= 2){
        return nums.length;
    }
    int slow = 1;
    for(int fast=2; fast<nums.length; fast++){
        if(nums[slow -1] != nums[fast]){
            slow++;
            nums[slow] = nums[fast];
        }
    }
    return slow + 1;
  }
}