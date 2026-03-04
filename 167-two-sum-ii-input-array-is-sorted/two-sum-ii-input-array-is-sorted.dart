class Solution {
  List<int> twoSum(List<int> numbers, int target) {
   List<int> result = [];
   for(int i=0; i<numbers.length-1; i++){
    for(int j=i+1; j<numbers.length; j++){
        if(numbers[i]+ numbers[j] == target){
            result.addAll([i+1,j+1]);
        }
    }
   }
   return result;
  }
}