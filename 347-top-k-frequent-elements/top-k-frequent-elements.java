class Solution {
    public int[] topKFrequent(int[] nums, int k) {
        Map<Integer, Integer> map = new HashMap<>();

        for(int num : nums){
            map.put(num, map.getOrDefault(num, 0)+1);
        }

        List<Integer> uniqueList = new ArrayList<>(map.keySet());
        uniqueList.sort((a, b) -> map.get(b).compareTo(map.get(a)));

        int[] result = new int[k];
        for(int i=0; i<k; i++){
            result[i] = uniqueList.get(i);
        }
        return result;
    }
}