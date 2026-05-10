class Solution {
  String longestCommonPrefix(List<String> strs) {
    if(strs.isEmpty){
        return " ";
    }
    String first = strs[0];
    for(int i=0; i<first.length; i++){
        String char = first[i];
        for(int j=1; j<strs.length; j++){
            if(i == strs[j].length || strs[j][i] != char){
                return first.substring(0, i);
            }
        }
    }
    return first;
  }
}