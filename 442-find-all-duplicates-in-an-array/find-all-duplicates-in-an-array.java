class Solution {
    public List<Integer> findDuplicates(int[] nums) {
        HashMap<Integer,Integer> h = new HashMap<>();
        ArrayList<Integer> res = new ArrayList<>();

        for(Integer i : nums){
            if(h.containsKey(i)){
                res.add(i);
            }else{
                h.put(i,1);
            }
        }
        return res;
    }
}