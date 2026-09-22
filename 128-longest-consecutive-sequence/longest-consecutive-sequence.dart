class Solution {
  int longestConsecutive(List<int> nums) {
    if(nums.isEmpty) return 0;
    Map<int, bool> map = {};

    for(int num in nums){
        map[num] = false;
    }
    int long = 0;

    for(int num in nums){
        if(map[num] == true) continue;
        map[num] = true;

        int currentStreak = 1;

        for(int i=num+1; map.containsKey(i); i++){
            map[i] = true;
            currentStreak++;
        }

        for(int j=num-1; map.containsKey(j); j--){
            map[j] = true;
            currentStreak ++;
        }

        if(currentStreak > long){
            long = currentStreak;
        }
    }
    return long;
  }
}