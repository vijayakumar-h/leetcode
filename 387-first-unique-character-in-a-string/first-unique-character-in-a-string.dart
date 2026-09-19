class Solution {
  int firstUniqChar(String s) {
    Map<String,int> map = {};
    
    for(int i=0; i<s.length; i++){
        String word = s[i];
        map[word] = (map[word] ?? 0)+1;
    }

    for(int i=0; i<s.length; i++){
        String word = s[i];
        if(map[word] == 1){
            return i;
        }
    }
    return -1;
  }
}