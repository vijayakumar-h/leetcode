class Solution {
  bool isPalindrome(String s) {
    String a = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
    String b = a.split('').reversed.join();

    return a == b;
  }
}