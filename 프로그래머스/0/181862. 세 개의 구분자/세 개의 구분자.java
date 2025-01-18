import java.util.*;

class Solution {
    public String[] solution(String myStr) {
        List<String> list = new ArrayList<>();
        char[] splited = myStr.toCharArray();
        String tmp = "";
        for(char c : splited) {
            if(isABC(c)) {
                if(!tmp.isEmpty()) list.add(tmp);
                tmp = "";
            } else tmp += Character.toString(c);
        }
        if(!tmp.isEmpty()) list.add(tmp);
        
        if(list.isEmpty()) list.add("EMPTY");
        
        String[] answer = new String[list.size()];
        int idx = 0;
        for(String str : list) answer[idx++] = str;
        
        return answer;
    }
    
    public static boolean isABC(char c) {
        return (c == 'a') || (c == 'b') || (c == 'c');
    }
}