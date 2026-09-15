class Solution {
  bool isAnagram(String s, String t) {
    String a = (s.split('')..sort()).join('');
    String b = (t.split('')..sort()).join('');
    if(a == b){
        return true;
    }
    return false;
  }
}