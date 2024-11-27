class Solution {
  int singleNumber(List<int> a) {
      
int flag;
int? n;
  for (var i = 0; i < a.length; i++) {
    flag = 0;
    for (var j = 0; j < a.length; j++) {
      if (a[i] == a[j] && i != j) {
        flag = 1;
        break;
      }
    }
   
    if (flag == 0) {
    n=a[i];
    }
  }
  return n!;
  }
}