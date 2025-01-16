import java.util.*;

class Solution {
    public String[] solution(String myString) {
        ArrayList<String> list = new ArrayList<>();
        String str = "";
        
        for(int i=0; i<myString.length(); i++) {
            if(myString.charAt(i) == 'x') {
                if(!str.isEmpty()) list.add(str);
                str = "";
            } else str += Character.toString(myString.charAt(i));
        }
        if(!str.isEmpty()) list.add(str);
        
        String[] answer = new String[list.size()];
        int idx = 0;
        for(String word : list) answer[idx++] = word;
        
        Arrays.sort(answer);
        return answer;
    }
}