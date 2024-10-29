import java.util.*;

class Solution {
    public String solution(String s) {
        String[] list = s.split("");
        Arrays.sort(list);
        
        String answer = "";
        for(int i=s.length()-1; i>-1; i--) answer += list[i];
        return answer;
    }
}