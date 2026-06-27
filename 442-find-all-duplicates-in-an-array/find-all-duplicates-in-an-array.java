class Solution {
    public List<Integer> findDuplicates(int[] nums) {
        HashSet<Integer> h = new HashSet<>();
        ArrayList<Integer> res = new ArrayList<>();

        for(Integer i : nums){
            if(h.contains(i)){
                res.add(i);
            }else{
                h.add(i);
            }
        }
        return res;
    }
}