class Solution {
  List<int> twoSum(List<int> numbers, int target) {
    List<int> res = [];
    int first = 0;
    int last = numbers.length - 1;
    while(first < last){
        int sum = numbers[first]+numbers[last];
        if(sum == target){
            res.add(first+1);
            res.add(last+1);
            return res;
        }else if(sum > target){
            last -= 1;
        }else{
            first += 1;
        }
    }
    return res;
  }
}