class Solution {
  bool isValid(String s) {
    List <String>char = [];
    for(int i=0; i< s.length; i++){
        if(char.isEmpty|| s[i] == "(" ||s[i] == "{"||s[i] == "["){
            char.add(s[i]);
        }else if((s[i] == ")" && char.last == "(")  || (s[i] == "}" && char.last == "{") || (s[i] == "]" && char.last== "[")){
            char.removeLast();
        }else{
            return false;
        }
    }
    if(char.isEmpty){
        return true;
    }
    return false;   
  }
}