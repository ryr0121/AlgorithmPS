import java.util.*;

class Solution {
    public String[] solution(String my_string) {
        ArrayList<String> words = new ArrayList<>();
        String tmp = "";
        int idx = 0;
        while(idx < my_string.length()) {
            if(my_string.charAt(idx) == ' ') {
                if(tmp.length() > 0) {
                    words.add(tmp);
                    tmp = "";
                }
            }
            else tmp += Character.toString(my_string.charAt(idx));
            idx++;
        }
        if(tmp.length() > 0) words.add(tmp);
        
        String[] answer = new String[words.size()];
        idx = 0;
        for(String word : words) answer[idx++] = word;
        
        return answer;
    }
}