import java.util.*;

class Solution {
    public int[] solution(int[] arr) {
        ArrayList<Integer> stk = new ArrayList<>();
        int i = 0;
        while(i < arr.length) {
            if(stk.isEmpty()) stk.add(arr[i++]);
            else {
                if(stk.get(stk.size()-1) == arr[i]) stk.remove(stk.size()-1);  
                else stk.add(arr[i]);
                i++;
            }
        }
        if(stk.isEmpty()) stk.add(-1);
        
        int[] answer = new int[stk.size()];
        int idx = 0;
        for(int n : stk) answer[idx++] = n;
        
        return answer;
    }
}