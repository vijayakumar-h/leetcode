class Solution {
  List<int> findDuplicates(List<int> nums) {
    Set<int> h = {};
    List<int> res = [];

    for(int i in nums){
        if(h.contains(i)){
            res.add(i);
        }else{
            h.add(i);
        }
    } 
    return res;
     }
}