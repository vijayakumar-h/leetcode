class Solution {
  void moveZeroes(List<int> nums) {
    List<int> result = [];
    for(int i in nums){
        if(i == 0){
            result.add(i);
        }
    }
    nums.removeWhere((e) => e == 0);
    nums.addAll(result);
  }
}