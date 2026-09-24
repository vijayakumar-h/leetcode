class Solution {
  List<int> topKFrequent(List<int> nums, int k) {
    Map<int, int> map = {};

    for(int i=0; i<nums.length; i++){
        int n = nums[i];
        map[n] = (map[n] ?? 0)+1;
    }
    List<int> uniqueList = map.keys.toList();
    uniqueList.sort((a, b) => map[b]!.compareTo(map[a]!));
    return uniqueList.take(k).toList();
  }
}