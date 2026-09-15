class Solution {
  bool isAnagram(String s, String t) {
    if(s.length != t.length) return false;

    Map<String, int> charCount = {};
    
    for(int i=0; i<s.length; i++){
        String char = s[i];
        charCount[char] = (charCount[char]?? 0) +1;
    }

    for(int i=0; i<t.length; i++){
        String char = t[i];
        if(!charCount.containsKey(char) || charCount[char] == 0){
            return false;
        }
        charCount[char] = charCount[char]! - 1;
    }
    return true;
  }
}