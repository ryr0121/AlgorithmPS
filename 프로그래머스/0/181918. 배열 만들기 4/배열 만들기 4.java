import java.util.*;

class Solution {
    public int[] solution(int[] arr) {
        ArrayList<Integer> stk = new ArrayList<>();
        
        int i=0;
        while(true) {
            if(i >= arr.length) break;
            
            if(stk.isEmpty()) stk.add(arr[i++]);
            else {
                if(stk.get(stk.size()-1) < arr[i]) stk.add(arr[i++]);
                else stk.remove(stk.size()-1);
            }
        }
        
        int[] answer = new int[stk.size()];
        int idx = 0;
        for(int n : stk) answer[idx++] = n;
        
        return answer;
    }
}