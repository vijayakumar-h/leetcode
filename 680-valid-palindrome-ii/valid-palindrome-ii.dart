class Solution {
  bool validPalindrome(String s) {
    int left = 0;
    int right = s.length - 1;
    while(left < right){
        if(s[left] != s[right]){
            return _isValidPalindrome(s, left+1, right) ||_isValidPalindrome(s, left, right-1);
        }
        left++;
        right--;
    }
    return true;
  }

  bool _isValidPalindrome(String s, int i , int j){
    while(i < j){
        if(s[i] != s[j]){
            return false;
        }
        i++;
        j--;
    }
    return true;
  }
}