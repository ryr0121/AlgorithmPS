import java.util.*;

class Solution {
    public String[] solution(String[] names) {
        ArrayList<String> name_list = new ArrayList<>();
        int cnt = 1;
        for(int i=0; i<names.length; i++) {
            if(cnt%5 == 1) name_list.add(names[i]);
            cnt++;
        }
        
        String[] answer = new String[name_list.size()];
        int idx = 0;
        for(String name : name_list) answer[idx++] = name;
        
        return answer;
    }
}