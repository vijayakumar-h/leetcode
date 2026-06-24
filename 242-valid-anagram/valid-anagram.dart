class Solution {
  bool isAnagram(String s, String t) {
    final List<String> s1 = s.split('')..sort();
    final List<String> t1 = t.split('')..sort();
    final String a = s1.join();
    final String b = t1.join();
    if(a == b){
        return true;
    }
    return false;
  }
}