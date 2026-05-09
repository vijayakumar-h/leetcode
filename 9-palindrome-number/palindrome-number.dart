class Solution {
  bool isPalindrome(int x) {
        String a = x.toString().split('').reversed.join();
    if (x.toString() == a) {
      return true;
    }
    return false;
  }
}