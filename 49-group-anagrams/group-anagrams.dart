class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    Map<String, List<String>> map = {};

    for(int i=0; i<strs.length; i++){
        String word = strs[i];

       String sortedKey = (word.split('')..sort()).join('');

       map.putIfAbsent(sortedKey, () => []);

       map[sortedKey]!.add(word);
    }
    return map.values.toList();
  }
}