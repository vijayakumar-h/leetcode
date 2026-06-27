class Solution {
  int findDuplicate(List<int> nums) {
    Map<int, int> h = new Map<int, int>();
    for(int i in nums){
        if(h.containsKey(i)){
            return i;
        }else{
            h[i] = 0;
        }
    }
    return 0;
  }
}