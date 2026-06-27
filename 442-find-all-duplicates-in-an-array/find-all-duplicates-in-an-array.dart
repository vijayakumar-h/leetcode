class Solution {
  List<int> findDuplicates(List<int> nums) {
 final Set<int> seen = {};
    final Set<int> duplicates = {}; 
    
    for (final i in nums) {
      if (seen.contains(i)) {
        duplicates.add(i);
      } else {
        seen.add(i);
      }
    }
    
    return duplicates.toList();
  }
}