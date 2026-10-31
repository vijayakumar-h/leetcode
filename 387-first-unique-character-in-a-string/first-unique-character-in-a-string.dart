class Solution {
  int firstUniqChar(String s) {
    Map<String, int> result = {};
    for(final count in s.split('')){
        result.update(count, (value) => value+1, ifAbsent:()=> 1);
    }
    for(int i=0; i<s.length; i++){
        if(result[s[i]] == 1){
            return i;
        }
    }
    return -1;
  }
}