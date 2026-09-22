class Solution {
    public int longestConsecutive(int[] nums) {
        if(nums == null || nums.length == 0){
            return 0;
        }

        Map<Integer, Boolean> visited = new HashMap<>();
        for(int num: nums){
            visited.put(num, false);
        }
        int longest = 0;

        for(int num: nums){
            if(visited.get(num)){
                continue;
            }
            visited.put(num, true);

            int continueStreak = 1;

            for(int i=num+1; visited.containsKey(i); i++){
                visited.put(i, true);
                continueStreak++;
            }

            for(int j=num-1; visited.containsKey(j); j--){
                visited.put(j, true);
                continueStreak++;
            }

            if(continueStreak > longest){
                longest = continueStreak;
            }
        }

        return longest;

    }
}