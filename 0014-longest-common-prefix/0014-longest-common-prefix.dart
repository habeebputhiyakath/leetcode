class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return '';
    
    var prefix = '';

    for (int i = 0; i < strs.first.length; i++) {
      var currentChar = strs.first[i];
      
      if (strs.every((s) => s.length > i && s[i] == currentChar)) {
        prefix += currentChar;
      } else {
        break;
      }
    }
    
    return prefix;
  }
}
