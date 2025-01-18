import java.util.*;

class Solution {
    public int[] solution(String[] intStrs, int k, int s, int l) {
        ArrayList<Integer> list = new ArrayList<>();
        for(String intStr : intStrs) {
            int sub = Integer.parseInt(intStr.substring(s,s+l));
            if(sub > k) list.add(sub);
        }
        
        int[] answer = new int[list.size()];
        int idx = 0;
        for(int n : list) answer[idx++] = n;
        
        return answer;
    }
}