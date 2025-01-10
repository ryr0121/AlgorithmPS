import java.util.*;

class Solution {
    public String[] solution(String[] strArr) {
        ArrayList<String> strs = new ArrayList<>();
        for(int i=0; i<strArr.length; i++) {
            boolean toUpper = i%2 == 1;
            String tmp = "";
            for(int j=0; j<strArr[i].length(); j++) {
                if(toUpper) tmp += Character.toUpperCase(strArr[i].charAt(j));
                else tmp += Character.toLowerCase(strArr[i].charAt(j));
            }
            strs.add(tmp);
        }
        
        String[] answer = new String[strs.size()];
        int idx = 0;
        for(String str : strs) answer[idx++] = str;
        
        return answer;
    }
}