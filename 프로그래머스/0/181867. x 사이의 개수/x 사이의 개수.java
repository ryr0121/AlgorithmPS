import java.util.*;

class Solution {
    public int[] solution(String myString) {
        ArrayList<Integer> cnts = new ArrayList<>();
        int cnt = 0;
        int idx = 0;
        
        while(idx < myString.length()) {
            if(myString.charAt(idx) != 'x') cnt++;
            else {
                cnts.add(cnt);
                cnt = 0;
            }
            idx++;
        }
        cnts.add(cnt);
        
        int[] answer = new int[cnts.size()];
        idx = 0;
        for(int n : cnts) answer[idx++] = n;
        
        return answer;
    }
}