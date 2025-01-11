import java.util.*;

class Solution {
    public String[] solution(String my_string) {
        String[] answer = new String[my_string.length()];
        for(int i=0; i<my_string.length(); i++) {
            String tmp = "";
            for(int j=i; j<my_string.length(); j++) {
                tmp += Character.toString(my_string.charAt(j));
            }
            answer[i] = tmp;
        }
        Arrays.sort(answer);
        return answer;
    }
}