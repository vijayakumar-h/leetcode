class Solution {
  bool isIsomorphic(String s, String t) {
if (s.length != t.length) return false;

  Map<String, String> mapS = {};
  Map<String, String> mapT = {};

  for (int i = 0; i < s.length; i++) {
    String charS = s[i];
    String charT = t[i];

    // Check mapping from s -> t
    if (mapS.containsKey(charS) && mapS[charS] != charT) {
      return false;
    }

    // Check mapping from t -> s (prevents two characters mapping to the same target)
    if (mapT.containsKey(charT) && mapT[charT] != charS) {
      return false;
    }

    mapS[charS] = charT;
    mapT[charT] = charS;
  }

  return true;
    
  }
}