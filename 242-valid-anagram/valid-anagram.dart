class Solution {
  bool isAnagram(String s, String t) {
    if(s.length != t.length){
        return false;
    }
    String checkSort(String name) => (name.split('')..sort()).join(); 
    String sChar = checkSort(s);
    String tChar = checkSort(t);
    return sChar == tChar;
  }
}