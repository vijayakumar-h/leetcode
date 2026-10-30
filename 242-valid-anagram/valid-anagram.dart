class Solution {
  bool isAnagram(String s, String t) {
    if(s.length != t.length){
        return false;
    }
    final Map<String, int> result = {};
    for(final count in s.split('')){
        result.update(count, (val) => val+1, ifAbsent: () => 1);
    }
    for(final count in t.split('')){
        int resultCount = result[count]??0;
        if(resultCount <= 0){
            return false;
        }
        result[count] = resultCount-1;
    }
    return true;
  }
}