import java.util.*;

class Solution {
    public int[] solution(int n) {
        ArrayList<Integer> list = new ArrayList<>();
        while(n > 0) {
            list.add(n);
            if(n == 1) break;

            if(n%2 == 0) n /= 2;
            else n = 3 * n + 1;
        }
        
        int[] answer = new int[list.size()];
        int idx = 0;
        for(int num : list) answer[idx++] = num;
        
        return answer;
    }
}