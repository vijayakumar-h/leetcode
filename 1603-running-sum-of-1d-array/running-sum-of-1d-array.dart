class Solution {
  List<int> runningSum(List<int> nums) {
    int sum = 0;
    List<int> list = [];
    for(int i in nums){
        sum += i;
        list.add(sum);
    }
    return list;
  }
}